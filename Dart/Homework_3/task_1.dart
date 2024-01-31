// 1. Let’s say you are given a list saved in a variable:
// a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
// Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.

//Way_1
List<int> FindEvenElements(List ls) {
  List<int> newList = [];
  for (var i = 0; i < ls.length; i++) {
    if (ls[i] % 2 == 0) {
      newList.add(ls[i]);
    }
  }
  return newList;
}

void main() {
  List<int> ls = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> evenNums = FindEvenElements(ls);
  print('Even numbers are: $evenNums');

  //Way_2
  List<int> evenNumbers = ls.where((element) => element % 2 == 0).toList();
  print('Even numbers are: $evenNumbers');
}
