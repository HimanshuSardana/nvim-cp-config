#include <stdio.h>

int main() {
  int arr[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int l = 0;
  int r = 9;

  int elem = 5;
  int idx;

  while (l <= r) {
    int mid = l + (r - l) / 2;
    if (arr[mid] == elem) {
      idx = mid;
      break;
    } else if (arr[mid] < elem) {
      l = mid + 1;
    } else {
      r = mid - 1;
    }
  }

  printf("%d ", idx);
  return 0;
}
