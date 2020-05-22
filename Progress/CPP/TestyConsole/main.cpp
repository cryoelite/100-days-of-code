#include <iostream>
#include "math.h"

using namespace std;

int main() {
	int x = 5;
    int& ref_x2 = x;
	int* ptr1{ &x };
	int* &ptr2{ x };
	ref_x2 = 2;
	int*& p_ref1 = ptr1;
	const int*& p_ref2 = ptr2;

}