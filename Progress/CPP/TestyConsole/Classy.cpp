#include "Classy.h"
#include <iostream>

Chori::Chori() {
	std::cout << "Chori()" << std::endl;
	this->asv = 0;
}

Chori::Chori(int a, int b) {
	std::cout << "Chori(int, int)" << std::endl;
	this->asv = a + b;
}

Chori::Chori(double a, double b) :Chori(int(a), int(b)) {
	std::cout << "Chori(double,double)" << std::endl;
}

Chori::Chori(const Chori& a) {
	std::cout << "Chori(&)" << std::endl;
	this->m_pp = new int(*a.m_pp);
}

void Chori::display()const {
	std::cout << "asv is" << this->asv << std::endl;
}

Chori::~Chori() {
	std::cout << "~Chori()" << std::endl;
}

Chori::Chori(Chori&& a) {
	std::cout << "Chori(&&)" << std::endl;
	this->m_pp = a.m_pp;
	a.m_pp = nullptr;
}