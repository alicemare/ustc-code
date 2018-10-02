/*
 * 在线处理算法
 * Ｏ(N)复杂度，但较难理解
 * int MaxSubseqSum(int A[],int N){
 * 	int ThisSum = MaxSum=0
 * 	int i
 * 	for i = 0; i<N;i++
 * 		ThisSum+=A[i]//向右累加
 * 		if(ThisSum>MaxSum)
 * 			MaxSum=ThisSum//update
 * 		else if ThisSum<0//如果当前子列为负
 * 			ThisSUm = 0//则不可能让后面的部分继续增大，故舍弃
 *	return MaxSum
 * }
