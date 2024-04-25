List<int> mergeSort(List<int> list) {
  if (list.length < 2) {
    return list;
  } else {
    List<int> left = list.sublist(0, list.length ~/ 2);
    List<int> right = list.sublist(list.length ~/ 2);
    return merge(mergeSort(left), mergeSort(right));
  }
}

List<int> merge(List<int> left, List<int> right) {
  final List<int> result = [];
  int i = 0;
  int j = 0;
  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }

  result.addAll(left.sublist(i));
  result.addAll(right.sublist(j));

  return result;
}

void main(List<String> args) {
  final res = mergeSort([3, 5, 2, 6]);
  print(res);
}