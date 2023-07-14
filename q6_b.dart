import 'dart:io';

void main() {
  stdout.write('início: ');
  int start = int.parse(stdin.readLineSync()!);
  
  stdout.write('fim: ');
  int end = int.parse(stdin.readLineSync()!);

  do {
    stdout.write('$start ');
    start++;
  } while(start <= end);
}