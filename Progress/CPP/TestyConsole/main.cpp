#include <iostream>
#include <sstream>
#include <string>
#include<initializer_list>

//#include "Dodo.h"
enum class Popi { BLUE, TRRS, PIOPO };


void inii(std::initializer_list<int>(vv)) {
	auto it = vv.begin();
	while (it != vv.end()) {
		std::cout << *it << std::endl;
		++it;
	}

	for (auto x : vv) {
		std::cout << x << std::endl;
	}
}
int main() {
	/*int a = 2;
	Dodo d1(4, a);
	Dodo d2 = d1;
	Dodo d3{ std::move(d2) };
	std::cout << d1.getVal() << std::endl;
	std::cout << d2.getVal() << std::endl;
	std::cout << d3.getVal() << std::endl;
	std::cout << "=====" << std::endl;
	std::cout << *d1.p << std::endl;
	std::cout << *d3.p << std::endl;*/
	int a{ static_cast<int>(Popi::PIOPO) };
	a == static_cast<int>(Popi::BLUE) ? std::cout << a << std::endl : std::cout << "na" << std::endl;

	std::stringstream ss;
	ss << "yalo " << a << std::endl;
	std::string s = ss.str();
	std::cout << s;
	s = std::to_string(a + a);
	ss.str(s);
	ss >> a;
	std::cout << a << std::endl;
	a = std::stoi(s);
	std::cout << a << std::endl;
	inii({ 2,3,4 });





	return 0;
}
