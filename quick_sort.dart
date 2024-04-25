List<int> quickSort(List<int> list) {
  if (list.length < 2) {
    return list;
  } else {
    final List<int> left = [];
    final List<int> right = [];
    final pivot = list.first;
    for (var i = 1; i < list.length; i++) {
      if (list[i] <= pivot) {
        left.add(list[i]);
      } else {
        right.add(list[i]);
      }
    }
    return quickSort(left) + [pivot] + quickSort(right);
  }
}

void main(List<String> args) {
  final res = quickSort([3, 5, 2, 6]);
  print(res);
}