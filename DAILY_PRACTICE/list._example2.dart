void main()
{
  List<int> l1 = [11,2,2,333,44,56,56];
  print(l1);

  l1.add(123123);
  l1.add(134564);

  for (var i in l1) {
    print(i);
  }
}