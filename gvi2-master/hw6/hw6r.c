#include <stdio.h>
int main()
{
    unsigned int w, x, y, z, i, d;
    unsigned int f;
    unsigned int g;
     
    /* Print header for K-map. */
    printf("    F     yz      \n");
    printf("      00 01 11 10 \n");
    printf("    ______________\n");
     
    /* row-printing loop */
    for (w  = 0; 2 > w; w = w + 1) {
     
        //printf("w=%u | ", w);
  
        /* Loop over input variable b in binary order. */
       // for (b = 0; 2 > b; b = b + 1) {
  
            /* Loop over d in binary order.*/
            for (d = 0; 2 > d; d = d + 1) {
         
                /* Use variables b and d to calculate *
                 * input variable c (iterated in      *
                 * Gray code order).                  */
                /* CALCULATE c HERE. */
		x = w ^ d;
	        printf("wx=%u%u | ", w, x);
		for (y = 0; 2 > y; y+= 1){
			for (i = 0; 2 > i; i+= 1){
				z = y ^ i;
				f = ((x &( ~z)) | ((~w) & y)) & 1;
				printf("%d  ",f);
 			}
		}
               		 /* Calculate and print one K-map entry *
                	 * (function F(a,b,c) = (a'+b)(b'+c)(a'+c').               */
               		 /* INSERT CODE HERE. */

		// f = ((~a & 1) | b ) & ((~b & 1) | c) & ((~a & 1)|(~c & 1)); 
		// printf("%d", f);
		printf("\n");
            }
       // }
  
        /* End of row reached: print a newline character. */
            printf("\n");
    }
 /* Print header for G K-map. */
    printf("    G     yz      \n");
    printf("      00 01 11 10 \n");
    printf("    ______________\n");
     
    /* row-printing loop */
    for (w  = 0; 2 > w; w = w + 1) {
     
        //printf("w=%u | ", w);
  
        /* Loop over input variable b in binary order. */
       // for (b = 0; 2 > b; b = b + 1) {
  
            /* Loop over d in binary order.*/
            for (d = 0; 2 > d; d = d + 1) {
         
                /* Use variables b and d to calculate *
                 * input variable c (iterated in      *
                 * Gray code order).                  */
                /* CALCULATE c HERE. */
		x = w ^ d;
	        printf("wx=%u%u | ", w, x);
		for (y = 0; 2 > y; y+= 1){
			for (i = 0; 2 > i; i+= 1){
				z = y ^ i;
				g = ((w & (~x) & y & (~z)) | (~w) | ((~x)&(~y))) & 1;
				printf("%d  ",g);
 			}
		}
               		 /* Calculate and print one K-map entry *
                	 * (function F(a,b,c) = (a'+b)(b'+c)(a'+c').               */
               		 /* INSERT CODE HERE. */
		printf("\n");
            }
       // }
  
        /* End of row reached: print a newline character. */
            printf("\n");
    }
     
    return 0;
}
