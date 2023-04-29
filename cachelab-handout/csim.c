#include "cachelab.h"
#include <getopt.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

//stamp用来储存该cacheline的上一次被调用的时间
typedef struct{
	int valid;
	unsigned tag;
	int stamp;
}cache_line;

static int time_stamp = 0;

char t[1000] = {};
int s = 0, E = 0, b = 0, S = 0, B = 0;           
int hit=0, miss=0, eviction=0;

cache_line** cache = NULL;

// LRU从0开始计时，每执行一次命令时间+1
//若发生冲突，则遍历时间最小的行数，也就是距离上一次调用最久远的行数
int LRU(int index_addr)
{
	int k = 0, min = cache[index_addr][0].stamp; 
    for(int i = 0; i < E; ++i) 
    {
        if(cache[index_addr][i].stamp < min)
        {
            min = cache[index_addr][i].stamp;
            k = i;
        }
    }
    return k;
}

//判断是否满，如果找到某行空，则返回该地址；否则返回-1
int isFull(unsigned tag_addr, unsigned index_addr)
{
	for(int i = 0; i < E; ++i)
	{
		if(cache[index_addr][i].valid == 0) 
		{
			return i;
		}
	}
	return -1;
}

//主要的函数实现
//首先要判断read是否命中
//不命中再判断是cool miss还是eviction
//若eviction，则调用LRU进行替换
void update(unsigned tag_addr, unsigned index_addr)
{
	for(int i=0;i<E;i++)
	{
		if((cache[index_addr][i].valid == 1) && (cache[index_addr][i].tag == tag_addr)) 
		{
			cache[index_addr][i].valid = 1;
			cache[index_addr][i].stamp = time_stamp;       
			hit++;
			return;
		}
	}

	int k = isFull(tag_addr, index_addr);
	if(k != -1)
	{
		cache[index_addr][k].tag = tag_addr;
		cache[index_addr][k].valid = 1;
		cache[index_addr][k].stamp = time_stamp;       
		miss++;
		return;
	}
	
    int j = LRU(index_addr);
	eviction++;
	miss++;
	cache[index_addr][j].tag = tag_addr;
	cache[index_addr][j].stamp = time_stamp;	
}

void printUsage()
{
	printf("You find the secret stinger!\n");
	printf("Our ashes will fly from the aeroplane over the sea!\n");
}

int main(int argc,char *argv[])
{
	int opt;         
	 while(-1 != (opt = getopt(argc, argv, "hvs:E:b:t:")))
    {
        /* determine which argument it’s processing */
        switch(opt) 
        {
            case 'h':
            // Optional help flag that prints usage info
				printUsage();
                break;
            case 'v':
            // Optional verbose flag that displays trace info
				printUsage();
                break;
            case 's':
            //  Number of set index bits (S = 2 ^ s is the number of sets)
                s = atoi(optarg);
                break;
            case 'E':
            //  Associativity (number of lines per set)
                E = atoi(optarg);
                break;
            case 'b':
            //  Number of block bits (B = 2 ^ b is the block size)
                b = atoi(optarg);
                break;
            case 't':
            // Name of the valgrind trace to replay
                strcpy(t, optarg);
                break;
            default:
				printUsage();
                break;
        }
    }
	S = 1 << s;
	B = 1 << b;

	cache = (cache_line**)malloc(sizeof(cache_line*) * (S + 1));             
	for(int i=0; i < S + 1; i++)
		*(cache+i) = (cache_line*)malloc(sizeof(cache_line) * (E + 1));
	for(int i=0; i < S + 1; i++)
	{
		for(int j=0;j<E + 1;j++)
		{
			cache[i][j].valid = 0;      
			cache[i][j].tag = -1;       
			cache[i][j].stamp = 0;      
		}	
	};

	FILE * f;  
	f = fopen(t,"r");  
	
	char identifier;
	unsigned address;
	int size;	

	while(fscanf(f," %c %x,%d",&identifier,&address,&size)>0)
	{
		unsigned index_addr =(address >> b) & ((-1U) >> (64-s));             
		unsigned tag_addr = address >> (s+b);                                

		switch(identifier){
			case 'L':
				update(tag_addr, index_addr);
				time_stamp++;
				break;
			case 'M':
				update(tag_addr, index_addr);
				time_stamp++;
			case 'S':
				update(tag_addr, index_addr);
				time_stamp++;
				break;
			default:
				continue;
		}
	}
	for(int i=0;i < S + 1; i++)                 
		free(*(cache+i));
	free(cache);
    printSummary(hit, miss, eviction);
    return 0;
}

