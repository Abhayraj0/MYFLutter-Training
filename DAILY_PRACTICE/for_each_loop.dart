/*
  for each loop iterates over all elements in same container and pass the element to specific
  function

  Syntax : For Each

  collection.foreach(void f(value))

*/
void main() {
  var l1 = [2,3,4,2,5,6,7,9,10];
  l1.forEach((element) {print(element * element );});
}