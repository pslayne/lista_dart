import 'dart:io';

void main() {
  stdout.write('inteiro: ');
  int num = int.parse(stdin.readLineSync()!);

  switch(num) {
    case 1: print('um'); break;
    case 2: print('dois'); break;
    case 3: print('três'); break;
    case 4: print('quatro'); break;
    case 5: print('cinco'); break;
    default: print('valor inválido');
  }
}