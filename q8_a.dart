import 'dart:io';

void main() {
  String right = 'right';

  stdout.write('senha: ');
  String input = stdin.readLineSync()!;

  while(input != right) {
    print('senha incorreta...');
    stdout.write('senha: ');
    input = stdin.readLineSync()!;
  }

  print('senha correta!');
}