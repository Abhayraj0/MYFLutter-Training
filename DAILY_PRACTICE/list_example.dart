void main()
{
  List shopping_list = ["fruits","veges","bread","milkbottel"];

  print(shopping_list);

  int count = 0;
  for (var item in shopping_list) {
    print(item);
    count++;
  }
  print(count);
}