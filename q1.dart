import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('peso em Kg (Ex.: 82.5): ');
  double peso = double.parse(stdin.readLineSync()!);
 
  stdout.write('altura em metros (Ex.: 1.80): ');
  double altura = double.parse(stdin.readLineSync()!);
 
  double imc = peso / pow(altura, 2);
 
  print('IMC = ' + imc.toStringAsFixed(2));
 
}