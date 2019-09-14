#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <array>
#include <stdio.h>
#include <vector>
#include <map>  
using namespace std;

string printTheArray(int arr[], int n,string s)
{
	string tmp = "";
	for (int i = 0; i < n; i++) {
		if (arr[i] == 1)
		{
			tmp += s.at(i);
		}
	}
	return tmp;
}

// Function to generate all binary strings 
void generateAllBinaryStrings(int n, int arr[], int i,string s, map<string, string>  *subStringS)
{
	if (i == n) {
		string tmp = printTheArray(arr, n, s);
		 subStringS->insert_or_assign(tmp, tmp);
		 return;
		
	}

	// First assign "0" at ith position 
	// and try for all other permutations 
	// for remaining positions 
	arr[i] = 0;
	generateAllBinaryStrings(n, arr, i + 1,s, subStringS);

	// And then assign "1" at ith position 
	// and try for all other permutations 
	// for remaining positions 
	arr[i] = 1;
	generateAllBinaryStrings(n, arr, i + 1, s,subStringS);
}
// Function to print all sub strings 
void findAllSubString(string s, int n, map<string, string>  *subString)
{
	// Pick starting point in outer loop 
	// and lengths of different strings for 
	// a given starting point 
	//123456789
	int arr[250];

	generateAllBinaryStrings(s.length(), arr,0,s, subString);
	
}



int main() {
	int count = 0;
	
	ifstream input("CAU3.INP");
	ofstream output("CAU3.OUT");
	string s1, s2,t;
	map<string, string>  subStringS1, subStringS2;
	if (input.is_open()) {
		getline(input, s1);
		getline(input, s2);
		input.close();
	}
	else
	{
		cout << "Unable to open file";
		return -1;
	}
	findAllSubString(s1, s1.length(), &subStringS1);
	findAllSubString(s2, s2.length(), &subStringS2);
	std::cout << subStringS1.size() << endl;
	std::cout << subStringS2.size() << endl;
	std::vector<string> conChung;
	for (auto const& imap : subStringS1)
	{
		if (subStringS2.find(imap.first) != subStringS2.end())
		{
			//std::cout << imap.first << "/" << subStringS2[imap.first] << endl;
			conChung.push_back(subStringS2[imap.first]);
		}

			
	}
	cout << conChung.size();

	std::sort(conChung.begin(), conChung.end());
	vector<string>::iterator it;
	/*for (it = conChung.begin(); it != conChung.end(); ++it)
		cout << " " << *it;
*/

	cout<< conChung.at(conChung.size()-1);
	if (output.is_open())
	{
		output << conChung.at(conChung.size() - 1);
		output.close();
	}
	input.close();
	return 0;
}
