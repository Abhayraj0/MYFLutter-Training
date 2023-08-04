/*
  exit controlled loop

  in condition check at exit level there are possibilities of at least 1 time loop 
  executation
*/

void main()
{
  int i = 6;
  do {
    print(i);
    i++;
  } while (i<=5);
}