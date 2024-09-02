#!/bin/bash

#create C++ files

touch name.cpp country.cpp


#write code in c++ files
#First File
echo '#include<iostream>
int main(){
	std::cout<<"Ayush Poudel"<<std::endl;
	return 0;
}' > name.cpp
#Second file
echo '#include<iostream>
int main(){
        std::cout<<"Nepal"<<std::endl;
        return 0;
}' >country.cpp

#compile both files
g++ name.cpp -std=c++11 -o print_name
g++ country.cpp -std=c++11 -o print_country

#execute the files
./print_name
./print_country


