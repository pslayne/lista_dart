import 'dart:io';

void main() {
  stdout.write('n1 = ');
  double n1 = double.parse(stdin.readLineSync()!);

  stdout.write('n2 = ');
  double n2 = double.parse(stdin.readLineSync()!);

  stdout.write('n3 = ');
  double n3 = double.parse(stdin.readLineSync()!);

  double parcial = (n1 + n2 + n3) / 3;

  if(parcial < 3.5) {
    print('reprovado :(');
  } else if(parcial < 7.0) {
    print('recuperação...');
    
    stdout.write('n4 = ');
    double n4 = double.parse(stdin.readLineSync()!);

    double media_final = (parcial * 6 + n4 *4) / 10;

    if(media_final >= 5.0) {
      print('aprovado!');
    } else {
      print('reprovado :(');
    }
  } else {
    print('aprovado!');
  }

}