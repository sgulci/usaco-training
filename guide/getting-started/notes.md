## Getting Started 

# Key takeaways

- sample c++ code
 
 ```

#include <bits/stdc++.h>

using namespace std;

int main() {
    
    // solution comes here

    ios::sync_with_stdio(0);
    cin.tie(0);

    int a, b;
    string x;
    cin >> a >> b >> x;
}

```

- complie and run

```
g++ -std=c++11 -O2 -Wall test.cpp -o test && ./test

```


- Note that the newline "\n" works faster than endl, because endl always
causes a flush operation

- Sometimes the program should read a whole line from the input, possibly
containing spaces. This can be accomplished by using the getline function:

```
string s;
getline(cin, s);

```

- If the amount of data is unknown, the following loop is useful:

```
while (cin >> x) {
    // code
}
```

- file input output 

```
freopen("input.txt", "r", stdin);
freopen("output.txt", "w", stdout);
```