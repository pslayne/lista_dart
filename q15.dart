import 'dart:io';

void main() {
  var matriz = [];

  stdout.write('n = ');         
  int n = int.parse(stdin.readLineSync()!);
  stdout.write('m = ');         
  int m = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    var aux = [];
    for (int j = 0; j < m; j++) {
      stdout.write('[$i][$j]: ');
      aux.add(int.parse(stdin.readLineSync()!));
    }
    matriz.add(aux);
  }

  print('');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      stdout.write('${matriz[i][j]}  ');
    }
    print('');
  }
}