import 'dart:io';

bool isPrime(N){
  for (var i = 2; i < N / i; i++) {
    if (N % i == 0) {
      return false;
    }
  }
    return true;
}


void main(){
  print("Enter the Number : ");
  var N = int.parse(stdin.readLineSync()!);
  if (isPrime(N)) {
    print("$N is Prime number...");
  } else {
    print("$N is not prime number....");
  }
}