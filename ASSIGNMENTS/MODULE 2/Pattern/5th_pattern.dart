import 'dart:io';

int main()
{
  int i,j;
  for(i=1;i<=5;i++)
  {
    for(j=5;j>=1;j--)
    {
      if(j<=i)
        stdout.write(j);
      else
        stdout.write(" ");
    } 
    stdout.write("\n");
  }
  return 0;
}

