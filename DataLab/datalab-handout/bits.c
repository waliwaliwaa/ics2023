/*
 * CS:APP Data Lab
 *
 * Sun Duozhi  2213112440-ics
 *
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 */

extern int printf(const char *, ...);

/* Edit the functions below.  Good luck!  */
// 2
/*
 * implication - given input x and y, which are binary
 * (taking  the values 0 or 1), return x -> y in propositional logic -
 * 0 for false, 1 for true
 *
 * Below is a truth table for x -> y where A is the result
 *
 * |-----------|-----|
 * |  x  |  y  |  A  |
 * |-----------|-----|
 * |  1  |  1  |  1  |
 * |-----------|-----|
 * |  1  |  0  |  0  |
 * |-----------|-----|
 * |  0  |  1  |  1  |
 * |-----------|-----|
 * |  0  |  0  |  1  |
 * |-----------|-----|
 *
 *
 *   Example: implication(1L,1L) = 1L
 *            implication(1L,0L) = 0L
 *   Rating: 2
 */
long implication(long x, long y) {
    return ((!x) | (y));
}
/*
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96L) = 0x20L
 *   Rating: 2
 */
long leastBitPos(long x) {
    return (x) & (~x + 1);
}
/*
 * distinctNegation - returns 1 if x != -x.
 *     and 0 otherwise
 *   Rating: 2
 */
long distinctNegation(long x) {
    return !!((x) ^ (~x + 1));
}
/*
 * fitsBits - return 1 if x can be represented as an
 *  n-bit, two's complement integer.
 *   1 <= n <= 64 *   Examples: fitsBits(5,3) = 0L, fitsBits(-4,3) = 1L
 *   Rating: 2
 */
long fitsBits(long x, long n) {
    x >>= (n - 1);
    return (!(~x ^ 0) | !(~x ^ -1));
}
// 2
/*
 * trueFiveEighths - multiplies by 5/8 rounding toward 0,
 *  avoiding errors due to overflow
 *  Examples:
 *    trueFiveEighths(11L) = 6L
 *    trueFiveEighths(-9L) = -5L
 *    trueFiveEighths(0x3000000000000000L) = 0x1E00000000000000L (no overflow)
 *  Rating: 4
 */
long trueFiveEighths(long x) {
    long last3 = 7 & x;
    x = x >> 3;
    // isPositive == 0, x > 0;
    long isPositive = (x >> 63);
    return ((x << 2) + x) + (((last3 << 2) + last3) >> 3) +
           ((((!!last3) & 1)) & (!!isPositive));
}
/*
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x8000000000000000L,0x8000000000000000L) = 0L,
 *            addOK(0x8000000000000000L,0x7000000000000000L) = 1L,
 *   Rating: 3
 */
long addOK(long x, long y) {
    long k = 0x7FFFFFFFFFFFFFFF;
    long sum = x + y;
    long isPx = !(x & (k << 63));
    long isPy = !(y & (k << 63));
    long isPs = !(sum & (k << 63));
    return !((isPx & isPy & !isPs) | (!isPx & !isPy & isPs));
}
/*
 * isPower2 - returns 1 if x is a power of 2, and 0 otherwise
 *   Examples: isPower2(5L) = 0L, isPower2(8L) = 1L, isPower2(0) = 0L
 *   Note that no negative number is a power of 2.
 *   Rating: 3
 */
long isPower2(long x) {
    long isPositive = (x >> 63) & 1;
    return !isPositive & (!((x) & (x - 1))) & !!(x ^ 0);
}
/*
 * rotateLeft - Rotate x to the left by n
 *   Can assume that 0 <= n <= 63
 *   Examples:
 *      rotateLeft(0x8765432187654321L,4L) = 0x7654321876543218L
 *   Rating: 3
 */
long rotateLeft(long x, long n) {
    long left = x << n;
    long right = x >> (64 - n);
    long mask = (1L << n) - 1;
    return left + (right & mask);
}

// 4
/*
 * isPalindrome - Return 1 if bit pattern in x is equal to its mirror image
 *   Example: isPalindrome(0x6F0F0123c480F0F6L) = 1L
 *   Rating: 4
 */
long isPalindrome(long x) {
    return (!(((x >> 0) & 1) ^ ((x >> 63) & 1))) &
           (!(((x >> 1) & 1) ^ ((x >> 62) & 1))) &
           (!(((x >> 2) & 1) ^ ((x >> 61) & 1))) &
           (!(((x >> 3) & 1) ^ ((x >> 60) & 1))) &
           (!(((x >> 4) & 1) ^ ((x >> 59) & 1))) &
           (!(((x >> 5) & 1) ^ ((x >> 58) & 1))) &
           (!(((x >> 6) & 1) ^ ((x >> 57) & 1))) &
           (!(((x >> 7) & 1) ^ ((x >> 56) & 1))) &
           (!(((x >> 8) & 1) ^ ((x >> 55) & 1))) &
           (!(((x >> 9) & 1) ^ ((x >> 54) & 1))) &
           (!(((x >> 10) & 1) ^ ((x >> 53) & 1))) &
           (!(((x >> 11) & 1) ^ ((x >> 52) & 1))) &
           (!(((x >> 12) & 1) ^ ((x >> 51) & 1))) &
           (!(((x >> 13) & 1) ^ ((x >> 50) & 1))) &
           (!(((x >> 14) & 1) ^ ((x >> 49) & 1))) &
           (!(((x >> 15) & 1) ^ ((x >> 48) & 1))) &
           (!(((x >> 16) & 1) ^ ((x >> 47) & 1))) &
           (!(((x >> 17) & 1) ^ ((x >> 46) & 1))) &
           (!(((x >> 18) & 1) ^ ((x >> 45) & 1))) &
           (!(((x >> 19) & 1) ^ ((x >> 44) & 1))) &
           (!(((x >> 20) & 1) ^ ((x >> 43) & 1))) &
           (!(((x >> 21) & 1) ^ ((x >> 42) & 1))) &
           (!(((x >> 22) & 1) ^ ((x >> 41) & 1))) &
           (!(((x >> 23) & 1) ^ ((x >> 40) & 1))) &
           (!(((x >> 24) & 1) ^ ((x >> 39) & 1))) &
           (!(((x >> 25) & 1) ^ ((x >> 38) & 1))) &
           (!(((x >> 26) & 1) ^ ((x >> 37) & 1))) &
           (!(((x >> 27) & 1) ^ ((x >> 36) & 1))) &
           (!(((x >> 28) & 1) ^ ((x >> 35) & 1))) &
           (!(((x >> 29) & 1) ^ ((x >> 34) & 1))) &
           (!(((x >> 30) & 1) ^ ((x >> 33) & 1))) &
           (!(((x >> 31) & 1) ^ ((x >> 32) & 1)));
}

/*
 * bitParity - returns 1 if x contains an odd number of 0's
 *   Examples: bitParity(5L) = 0L, bitParity(7L) = 1L
 *   Rating: 4
 */
long bitParity(long x) {
    x ^= x >> 32;
    x ^= x >> 16;
    x ^= x >> 8;
    x ^= x >> 4;
    x ^= x >> 2;
    x ^= x >> 1;
    x &= 1;
    return x;
}
/*
 * absVal - absolute value of x
 *   Example: absVal(-1) = 1.
 *   You may assume -TMax <= x <= TMax
 *   Rating: 4
 */
long absVal(long x) {
    long isPositive = x >> 63;
    long ret = (x ^ isPositive) - isPositive;
    return ret;
}
