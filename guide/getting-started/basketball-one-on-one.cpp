#include <iostream>
#include <string>

using namespace std;


//https://open.kattis.com/problems/basketballoneonone

int main() {
    ios_base::sync_with_stdio(0);
    cin.tie(0);

    string c;
    cin >> c;

    int len = c.length();

    cout<< c[len-2]<< endl;
   
}