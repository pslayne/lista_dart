import 'dart:io';
import 'Pessoa.dart';

void main(){
  var pessoas = cadastro();
  pessoas.forEach((pessoa) => print(pessoa));
}

cadastro(){
  var pessoas = <Pessoa>[];
  String nome, r;
  double peso, altura;
  
  do{
    stdout.write('nome: ');
    nome = stdin.readLineSync()!;
    
    stdout.write('peso: ');
    peso = double.parse(stdin.readLineSync()!);

    stdout.write('altura: ');
    altura = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = new Pessoa(nome, peso, altura);
    pessoas.add(pessoa);
    
    stdout.write('deseja inserir mais um registro? S/N ');
    r = stdin.readLineSync()!;
  } while(r == 's' || r == 'S');

  return pessoas;
}