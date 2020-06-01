#include <iostream>
#include "Dodo.h"




int main() {
	int a = 2;
	Dodo d1(4, a);
	Dodo d2 = d1;
	Dodo d3{ std::move(d2) };
	std::cout << d1.getVal() << std::endl;
	std::cout << d2.getVal() << std::endl;
	std::cout << d3.getVal() << std::endl;
	std::cout << "=====" << std::endl;
	std::cout << *d1.p << std::endl;
	std::cout << *d2.p << std::endl;



	return 0;
}
