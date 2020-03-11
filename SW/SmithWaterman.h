#ifndef SMITHWATERMAN_H_
#define SMITHWATERMAN_H_
#define N 100
#define M 100

typedef char item_t;
typedef int	score_t;

void SmithWaterman (
    item_t seq1[N],
    item_t seq2[M],
	item_t aligned_seq1[N],
    int *n,
	item_t aligned_seq2[M],
    int *m,
	int *l
);

void align(
	const item_t seq1[N],
	const int n,
	const item_t seq2[M],
	const int m,
	score_t H[N+1][M+1],
	int pos[2]
);

void traceback(
	const item_t seq1[N],
	const int n,
	const item_t seq2[M],
	const int m,
	const score_t H[N+1][M+1],
	const int pos[2],
	item_t aligned_seq1[N],
	item_t aligned_seq2[M],
	int *l
);

#endif
