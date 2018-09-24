/*
 * int func(List A, List B):
 *	int maxindex_a = length(A)-1
 *	int maxindex_b = length(B)-1
 *	for(int i = 0 ; i < maxindex_a && i < maxindex_b ; ++i):
 *		if A[i] == B[i]:
 *			continue
 *		if A[i] < B[i]:
 *			return -1
 *		return 0
 *
 */
