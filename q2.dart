import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('raio do círculo: ');
  double r = double.parse(stdin.readLineSync()!);
  double area = pi * pow(r, 2);

  stdout.write('área do círculo = ' + area.toStringAsFixed(2));

}