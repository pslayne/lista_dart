import 'dart:io';

void main() {
    stdout.write('n1 = ');
    int n1 = int.parse(stdin.readLineSync()!);

    stdout.write('n2 = ');
    int n2 = int.parse(stdin.readLineSync()!);

    print(pa(n1, n2));
}

double pa(int a, int b) {
  int n = b - a + 1;
  return (n * (a + b))/2;
}