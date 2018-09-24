/*
 * O(n)的链表去重函数，仅仅适用于此类递增（减）链表
 * // duplicate remove:
 * void dupl_remove (List & A):
 * 	for (auto elem : A):
 * 		if(elem == elem.next):
 * 			remove_node(C,elem)
 * 
 * List & merge (List & A, List & B):
 * 	List temp = two2one(A,B)	
 * 	trans(temp)
 * 	dupl_remove(temp)
 *
 * 	 
