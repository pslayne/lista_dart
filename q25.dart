import 'dart:io';

void main() {
    stdout.write('n1 = ');
    int n1 = int.parse(stdin.readLineSync()!);

    stdout.write('n2 = ');
    int n2 = int.parse(stdin.readLineSync()!);

    print(somatorio(n1, n2));
}

int somatorio(int a, int b) {
  if (a > b) 
    return 0;
  else
    return a + somatorio(a + 1, b);
}
