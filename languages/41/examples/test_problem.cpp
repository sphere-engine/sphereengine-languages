#include <iostream>
using namespace std; // consider removing this line in serious projects

int main() {
	int intNum = 0;
	
	cin >> intNum;
	while (intNum != 42) {
		cout << intNum << "\n";
		cin >> intNum;
	}

	return 0;
}
