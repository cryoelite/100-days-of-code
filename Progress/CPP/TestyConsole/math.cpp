
int Add(int *a, int *b) {
	return *a + *b;
}

void AddVal(int* a, int* b, int* result) {
	*result = *a + *b;
	
}
void Swap(int* a, int* b) {
	if (*a > * b) {
		*a = *a - *b;
		*b = *b + *a;
		*a = *b - *a;
	}
	else {
		*b = *b - *a;
		*a = *b + *a;
		*b = *a-*b;
	}
}

void Factorial(int* a, int* result) {
	if (*a > 1) {
		*result = *a * *result;
		*a = *a - 1;
		Factorial(a, result);
	}
}