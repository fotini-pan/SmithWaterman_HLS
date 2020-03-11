#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "SmithWaterman.h"

const score_t match_score = 3;
const score_t mismatch_score = -3;
const score_t gap_score = -2;

void SmithWaterman(
	item_t seq1[N],
	item_t seq2[M],
	item_t aligned_seq1[N],
	int *n,
	item_t aligned_seq2[M],
	int *m,
	int *l)
{
	/* Initialize the first row and column of the score matrix H ([N+1]x[M+1]). */
	score_t H[N+1][M+1];
	H[0][0] = (score_t) 0;
	*n = N;
	Init_Row_Loop: for (int i=1; i<=N; i++) {
		H[i][0] = (score_t) 0;
		// aligned_seq1[i] = (item_t) 0;
		if (seq1[i] == 0) {
			*n = i;
			break;
		}
	}
	*m = M;
	Init_Col_Loop: for (int i=1; i<=M; i++) {
		H[0][i] = (score_t) 0;
		// aligned_seq2[i] = (item_t) 0;
		if (seq2[i] == 0) {
			*m = i;
			break;
		}
	}

	/* Alignment phase */
	int pos[2];
	align(seq1, *n, seq2, *m, H, pos);

	/* Traceback phase */
	traceback(seq1, *n, seq2, *m, H, pos, aligned_seq1, aligned_seq2, l);
}

score_t max(score_t a, score_t b, score_t c, score_t d) {
	score_t max = a;
	if (b > max) {
		max = b;
	}
	if (c > max) {
		max = c;
	}
	if (d > max) {
		max = d;
	}
	return max;
}

void strrev(char *s) {
	int i = 0;
	int j = strlen(s)-1;
	while(i<j){
		int temp = s[i];
		s[i] = s[j];
		s[j] = temp;
		i++;
		j--;
  	}
}

void align(
	const item_t seq1[N],
	const int n,
	const item_t seq2[M],
	const int m,
	score_t H[N+1][M+1],
	int pos[2])
{
	score_t max_score, diag_score, right_score, down_score;
	max_score = (score_t) 0;
	pos[0] = 0;
	pos[1] = 0;
	Align_Row_Loop: for (int i=1; i<=n; i++) {
		Align_Col_Loop: for (int j=1; j<=m; j++) {
			diag_score = H[i-1][j-1];
			if (seq1[i-1] == seq2[j-1]) {
				diag_score += match_score;
			}
			else {
				diag_score += mismatch_score;
			}
			right_score = H[i][j-1] + gap_score;
			down_score = H[i-1][j] + gap_score;
			H[i][j] = (score_t) max(0, diag_score, right_score, down_score);
			// printf("%d ", H[i][j]);
			if (max_score <= H[i][j]) {
				max_score = H[i][j];
				pos[0] = i;
				pos[1] = j;
			}
		}
		// printf("\n");
	}
}

void traceback(
	const item_t seq1[N],
	const int n,
	const item_t seq2[M],
	const int m,
	const score_t H[N+1][M+1],
	const int pos[2],
	item_t aligned_seq1[N],
	item_t aligned_seq2[M],
	int *l)
{
	score_t diag_score, left_score, up_score;
	int i = pos[0];
	int j = pos[1];
	*l = 0;
	Traceback_Loop: while ((i > 0) && (j > 0)) {
		// printf("pos=(%d, %d)\n", i, j);
		// printf("H=%d\n", H[i][j]);
		if (!H[i][j]) {
			break;
		}
		diag_score = H[i-1][j-1];
		if (seq1[i-1] == seq2[j-1]) {
			diag_score += match_score;
		}
		else {
			diag_score += mismatch_score;
		}
		left_score = H[i][j-1] + gap_score;
		up_score = H[i-1][j] + gap_score;
		if (H[i-1][j-1] && (diag_score == H[i][j])) {
			i--;
			j--;
			aligned_seq1[*l] = seq1[i];
			aligned_seq2[(*l)++] = seq2[j];
		}
		else if (H[i-1][j] && (up_score == H[i][j])) {
			i--;
			aligned_seq1[*l] = seq1[i];
			aligned_seq2[(*l)++] = '-';
		}
		else if (H[i][j-1] && (left_score == H[i][j])) {
			j--;
			aligned_seq1[*l] = '-';
			aligned_seq2[(*l)++] = seq2[j];
		}
		else {
			i--;
			j--;
			aligned_seq1[*l] = seq1[i];
			aligned_seq2[(*l)++] = seq2[j];
		}
	}
	aligned_seq1[*l] = 0;
	aligned_seq2[*l] = 0;
	strrev(aligned_seq1);
	strrev(aligned_seq2);
}
