
// My very first C++ code :)
#include <iostream> // iostream provides basic i/o services for C++ programs.
using namespace std;

// This function calculates sum and return sum .
int func (int a ,int b )
{
	int c = a+b ; // Adding two variable .
	return c; // Return sum to main function .
}

//Main function
int main()
{
	int x , y ; //To declare input values
	cout<<"Enter two values:"<<endl;

	cin>>x>>y ; //To take input
	int sum = func (x, y); //To calculate sum , call function
	cout<<"Sum: "<<sum<<endl;
	return 0 ;
}
// I am happy :)