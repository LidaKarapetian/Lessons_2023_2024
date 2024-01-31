//Write a program that takes a list of numbers for example
// a = [5, 10, 15, 20, 25]
// and makes a new list of only the first and last elements of the given list.

//Way_1
List<int> FirstLastEl(List ls) {
  List<int> NewList = [];
  NewList.add(ls[0]);
  List<dynamic> reversedLs = ls.reversed.toList();
  NewList.add(reversedLs[0]);
  return NewList;
}

void main() {
  List<int> ls = [5, 10, 15, 20, 25];
  List<int> NewLs = FirstLastEl(ls);
  print('First and last elements are: $NewLs');

  //Way_2
  List<int> result = [ls.first, ls.last];
  print('First and last elements are: $result');
}
