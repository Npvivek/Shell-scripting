#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <string.h>
#define n 3 //threads

int A[3][3] = {{1, 2, 4}, {3, 4, 5}, {4, 5, 7}};
int B[3][3] = {{2, 3, 9}, {4, 5, 7}, {2, 3, 9}};
int C[3][3];
int count=0;

void * multiplication(){
    for (int j = 0; j < 3; j++) {
	
        for (int k = 0; k < 3; k++)  
            C[count][j] += A[count][k] * B[k][j]; 
    count++;
}              
}
int main()
{
    pthread_t threads[n];
    int i, j;

    for (i = 0; i < n; i++) { 
        pthread_create(&threads[i], NULL, multiplication, NULL); 
    } 
    
    for(i = 0; i < n; i++)
    {
        pthread_join(threads[i], NULL);
    }

    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            printf("%d\t", C[i][j]);
        }

        printf("\n");
    }
    return 0;
}
