import 'dart:io';

void main() {
  stdout.write('investimento inicial: ');
  double investimento_inicial = double.parse(stdin.readLineSync()!);
  
  stdout.write('investimento mensal: ');
  double investimento_mensal = double.parse(stdin.readLineSync()!);

  stdout.write('número de meses: ');
  double meses = double.parse(stdin.readLineSync()!);

  stdout.write('taxa juros mensal: ');
  double taxa = double.parse(stdin.readLineSync()!);

  double saldo = investimento_inicial;
  double ren_mensal;

  for(int m = 1; m <= meses; m++){
    ren_mensal = taxa * saldo;
    
    print('              mês $m              ');
    print('----------------------------------');
    print('saldo acumulado: ${saldo.toStringAsFixed(2)}');
    print('rendimento mensal: ${ren_mensal.toStringAsFixed(2)}');
    print('----------------------------------');

    saldo += ren_mensal + investimento_mensal;
  }


}