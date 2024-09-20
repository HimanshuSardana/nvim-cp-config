#include <bits/stdc++.h>

using namespace std;

int main() {
  int arr[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  int l = 0;
  int r = 9;
  int x = 5;
  while (l <= r) {
    int m = l + (r - l) / 2;
    if (arr[m] == x) {
      cout << "Element found at index " << m << endl;
      return 0;
    }
    if (arr[m] < x) {
      l = m + 1;
    } else {
      r = m - 1;
    }
  }
}
