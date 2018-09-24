/*
 * List & two2one( List & A , List & B):
 * 	List C
 * 	Initlize(C)
 * 	int maxindex_A = length(A)-1
 * 	int maxindex_B = length(B)-1
 * 	int i = maxindex_A , int j = maxindex_B
 * 	while(i >= 0 && j >= 0):
 * 		if(A[i]>=B[j]):
 * 			List_add(C,A[i])
 * 			i--
 * 		else:
 * 			List_add(C,B[i])
 * 			j--
 * 	return C
 */
