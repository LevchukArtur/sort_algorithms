void shellSort(List<int> arr) {
  int n = arr.length;
  int gap = 1;
  int i = 0;
  int j = 0;
  int temp = 0;

  while (gap < n) {
    gap = gap * 3 + 1;
  }

  while (gap > 0) {
    gap = gap ~/ 3;

    for (i = gap; i < n; i++) {
      temp = arr[i];
      j = i - gap;

      while (j >= 0 && arr[j] > temp) {
        arr[j + gap] = arr[j];
        j = j - gap;
      }

      arr[j + gap] = temp;
    }
  }
}

void main() {
  List<int> numbers = [2, 5, 1, 3, 4, 7];
  print("Before sorting: $numbers");
  shellSort(numbers);
  print("After sorting: $numbers");
}