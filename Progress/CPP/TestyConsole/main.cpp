#include <iostream>
#include "math.h"

using namespace std;

int main() {
	int x[]{ 1,2,3,4 };
	int* beg{ &x[0] };
	cout << *(++beg) << endl;
	cout << x[0] << endl;
	beg = &x[0];
	cout << ++ * beg<<endl;
	cout << x[0];



}