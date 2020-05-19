#include <iostream>
#include "math.h"

using namespace std;

int main() {
	int c{ 12 }, d{ 33 }, e{ 1 };
	int* a{ &c }, * b{ &d }, * result{ &e };
	cout << Add(a, b);
	AddVal(a, b,result);
	cout << endl << c << " " << d << " " << e << endl;
	e = 1;
	Swap(a, b);
	cout << endl << c << " " << d << endl;
	d = 4;
	Factorial(b, result);
	cout << *result;

}