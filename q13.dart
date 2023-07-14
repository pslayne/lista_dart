import 'dart:io';

void main() {
  stdout.write('n = ');
  int n = int.parse(stdin.readLineSync()!);
  print(rep_fat(n));
  print(fatorial(n));
}

int rep_fat(int n) {
  int fat = 1;
  for(; n > 1; n--) {
    fat *= n;
  }
  return fat;
}

int fatorial(int n) {
  if (n <= 1) return 1;
  return n * fatorial(n-1);
}