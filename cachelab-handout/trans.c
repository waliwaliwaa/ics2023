/* 
 * trans.c - Matrik transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
	if(M == 32)
	{
        //32组32Byte的Block，可以存储每组可以存储8个int
        //cache一下子存放可以32 * 8个整数，映射问题会发生8行一次的eviction，所以8 * 8分块
        //对角线处会发生A读miss，B读miss，B把A替换eviction，A再读eviction
		for(int i = 0; i < N; i+=8)
		{
			for(int j = 0; j < M; j+=8)
			{
				for(int k = 0; k < 8; ++k)
				{
                    //定义中间变量，把从A中读出来的数存起来
                    //再把中间变量写入B
                    //从而降低eviction
					int val0 = A[k + i][j + 0];
					int val1 = A[k + i][j + 1];
					int val2 = A[k + i][j + 2];
					int val3 = A[k + i][j + 3];
					int val4 = A[k + i][j + 4];
					int val5 = A[k + i][j + 5];
					int val6 = A[k + i][j + 6];
					int val7 = A[k + i][j + 7];

		  			B[j + 0][k + i]= val0; 
		  			B[j + 1][k + i]= val1; 
		  			B[j + 2][k + i]= val2; 
		  			B[j + 3][k + i]= val3; 
					B[j + 4][k + i]= val4; 
					B[j + 5][k + i]= val5; 
					B[j + 6][k + i]= val6; 
					B[j + 7][k + i]= val7; 
				}
			}
		}
	}
	else if(M == 64)
	{
        //由于64 * 64，4行就会发生冲突，故原本采用4 * 4，但是效果不佳
        //虽然4行就发生冲突，但是cache一次可以读8个int，若采用4 * 4会浪费后半段cache
        //因此可以选用8 * 8，在8 * 8内部实行4 * 8；把前4 * 4写入中间变量直接进行转置，把后4 * 4存入B中还没用到的部分中待机
        int i, j, k;
        int val0, val1, val2, val3, val4, val5, val6, val7;
        for (i = 0; i < N; i += 8) 
        {
            for (j = 0; j < M; j += 8) 
            {
                for (k = 0; k < 4; k++) 
                {
                    // 温馨提示---by:SDZ ：看注释看不明白就画张图一行行对比就懂了
                    // 读取A一行的数据
                    val0 = A[i + k][j + 0];
                    val1 = A[i + k][j + 1];
                    val2 = A[i + k][j + 2];
                    val3 = A[i + k][j + 3];
                    val4 = A[i + k][j + 4];
                    val5 = A[i + k][j + 5];
                    val6 = A[i + k][j + 6];
                    val7 = A[i + k][j + 7];
                    // 前四个中间变量存入B的前列
                    B[j + 0][i + k] = val0;
                    B[j + 1][i + k] = val1;
                    B[j + 2][i + k] = val2;
                    B[j + 3][i + k] = val3;
                    // 后四个中间变量存入B的后列
                    B[j + 0][i + k + 4] = val4;
                    B[j + 1][i + k + 4] = val5;
                    B[j + 2][i + k + 4] = val6;
                    B[j + 3][i + k + 4] = val7;
                }

                for (k = 0; k < 4; k++) 
                {
                    // 逐列读取A的左下角
                    val0 = A[i + 4][j + k];
                    val1 = A[i + 5][j + k];
                    val2 = A[i + 6][j + k];
                    val3 = A[i + 7][j + k];
                    // 逐行读取B的右上角
                    val4 = B[j + k][i + 4];
                    val5 = B[j + k][i + 5];
                    val6 = B[j + k][i + 6];
                    val7 = B[j + k][i + 7];
                    // 实现B的右上角与A的左下角的替换
                    B[j + k][i + 4] = val0;
                    B[j + k][i + 5] = val1;
                    B[j + k][i + 6] = val2;
                    B[j + k][i + 7] = val3;
                    // 实现B的左下角与B的右上角的替换
                    B[j + k + 4][i + 0] = val4;
                    B[j + k + 4][i + 1] = val5;
                    B[j + k + 4][i + 2] = val6;
                    B[j + k + 4][i + 3] = val7;
                }

                // 最后处理右下角
                for (k = 4; k < 8; k++) 
                {
                    val0 = A[i + k][j + 4];
                    val1 = A[i + k][j + 5];
                    val2 = A[i + k][j + 6];
                    val3 = A[i + k][j + 7];

                    B[j + 4][i + k] = val0;
                    B[j + 5][i + k] = val1;
                    B[j + 6][i + k] = val2;
                    B[j + 7][i + k] = val3;
                }
            }
        }
	}
	else// 61 * 67
	{
        // 由于行列不是对称，所以选取8 * 8先处理67 * 56
        int i, j;
        int val0, val1, val2, val3, val4, val5, val6, val7;
        // 67 * 56
        for (j = 0; j < 56; j += 8) 
        {
            for (i = 0; i < N; i++) {
                    val0 = A[i][j + 0];
                    val1 = A[i][j + 1];
                    val2 = A[i][j + 2];
                    val3 = A[i][j + 3];
                    val4 = A[i][j + 4];
                    val5 = A[i][j + 5];
                    val6 = A[i][j + 6];
                    val7 = A[i][j + 7];

                    B[j + 0][i] = val0;
                    B[j + 1][i] = val1;
                    B[j + 2][i] = val2;
                    B[j + 3][i] = val3;
                    B[j + 4][i] = val4;
                    B[j + 5][i] = val5;
                    B[j + 6][i] = val6;
                    B[j + 7][i] = val7;
            }
        }
        // rest
        // 剩余的直接转置
        for (i = 0; i < N; i++) 
        {
            for (j = 56; j < M; j++) {
                val0 = A[i][j];
                B[j][i] = val0;
            }
        }
    }
}
/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
	// 8 parts
	// 32 / 8 = 4
	
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to ekperiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}


