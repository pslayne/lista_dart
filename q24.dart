import 'dart:io';

void main() {
  stdout.write('n = ');
  int n = int.parse(stdin.readLineSync()!);
  print(fatorial(n));
}

int fatorial(int n) {
  if (n <= 1) 
    return 1;
  
  return n * fatorial(n-1);
}