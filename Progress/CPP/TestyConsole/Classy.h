#pragma once

class Chori {
public:
	int* m_pp{};
	int asv{};
	Chori();
	Chori(int a, int b);
	Chori(float a , float b) = delete;
	Chori(double a, double b);
	Chori(const Chori& a);
	void display()const;
	~Chori();
	Chori(Chori &&a);
};