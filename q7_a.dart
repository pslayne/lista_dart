import 'dart:io';

void main() {
  stdout.write('início: ');
  int start = int.parse(stdin.readLineSync()!);
  
  stdout.write('fim: ');
  int end = int.parse(stdin.readLineSync()!);

  while(start <= end) {
    if(start % 2 != 0) stdout.write('$start ');
    start++;
  }
}