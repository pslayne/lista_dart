import 'dart:io';

void main() {
  stdout.write('n = ');
  int n = int.parse(stdin.readLineSync()!);

  for(int i = 0; i <= 10; i++) {
    print('$n x $i = ${n * i}');
  }
}