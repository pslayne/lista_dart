import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('a = ');
  double a = double.parse(stdin.readLineSync()!);

  stdout.write('b = ');
  double b = double.parse(stdin.readLineSync()!);

  stdout.write('c = ');
  double c = double.parse(stdin.readLineSync()!);

  raizes(a, b, c);
}

double delta(double a, double b, double c) {
  return pow(b, 2) - 4 * a * c; 
}

void raizes(double a, double b, double c) {
  double d = delta(a, b, c);
  double x1 = (-1 * b + sqrt(d)) / 2 * a;
  stdout.write('x1 = $x1 \n');
  
  double x2 = (-1 * b - sqrt(d)) / 2 * a;
  stdout.write('x2 = $x2');
}