#include <iostream>
#include "Classy.h"


using namespace std;

int main() {
	Chori A(2.0,3.0);
	auto b{ std::move(A) };
	return 0;
}
