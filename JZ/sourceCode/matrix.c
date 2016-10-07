void matrix(int *A, int *B, int *C, int n, int m) {
/* multipiziere die Matrizen A(n x m), B(m x n), Resultat in C */
	int i,j,k,sum;
		for (i = 0; i < n; i++) {	/* alle Zeilen */
			for (j = 0; j < n; j++) { 	/* alle Spalten */
				sum = 0;
			for (k = 0; k < m; k++) { 	/* Skalarprodukt */
				sum = sum + (A[i * m + k] * B[k * n + j]);
			}
			C[i * n + j] = sum;
		}
	}
}