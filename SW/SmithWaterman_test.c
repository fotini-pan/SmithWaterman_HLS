#include <stdio.h>
#include <stdlib.h>

#include "SmithWaterman.h"

int main()
{
    FILE *fdi, *fdo;
    fdi = fopen("in.dat", "r");
    fdo = fopen("out.dat", "w");
    item_t seq1[N], aligned_seq1[N], seq2[M], aligned_seq2[M];
    while (fscanf(fdi, "%s %s\n", seq1, seq2) != EOF) {
        item_t aligned_seq1[N], aligned_seq2[M];
        int n, m, l;
        SmithWaterman(seq1, seq2, aligned_seq1, &n, aligned_seq2, &m, &l);
        aligned_seq1[l] = 0;
        aligned_seq2[l] = 0;
        fprintf(fdo, "%s %s\n", aligned_seq1, aligned_seq2);
    }
    fclose(fdi);
    fclose(fdo);
    if (system("diff -w out.dat out.gold.dat")) {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
        fprintf(stdout, "*******************************************\n");
        return 1;
    }
    else {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "PASS: The output matches the golden output!\n");
        fprintf(stdout, "*******************************************\n");
        return 0;
    }
}
