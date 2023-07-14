import 'dart:io';
import 'dart:math';
import 'q13.dart';

void main() {
  int e = -1;
  while(true) {
    print('1 - potenciacão');
    print('2 - raiz quadrada');
    print('3 - fatorial');
    print('0 - sair');
    e = int.parse(stdin.readLineSync()!);
    if(e == 0) break;

    stdout.write('n = ');
    int n = int.parse(stdin.readLineSync()!);

    switch(e) {
      case 1: 
          stdout.write('expoente = ');
          int p = int.parse(stdin.readLineSync()!);
          print('$n ^ $p = ${pow(n, p)}\n');
          break;
      case 2: 
          print('$n ^ 1/2 = ${sqrt(n)}\n');
          break;
      case 3:
          print('$n! = ${fatorial(n)}\n');
          break;
      default:
          print('opção inválida');
    }
  }
}