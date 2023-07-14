import 'dart:math';

class Pessoa {
  late String nome;
  late double peso;
  late double altura; 
  late double imc;

  Pessoa(String nome, double peso, double altura){
    this.nome = nome;
    this.peso = peso;
    this.altura = altura; 
    this.imc = imc_calc(peso, altura);
  }

  Pessoa.imc(String nome, double peso, double altura, double imc){
    this.nome = nome;
    this.peso = peso;
    this.altura = altura; 
    this.imc = imc;
  }

  double imc_calc(double peso, double altura) {
    return peso / pow(altura, 2);
  }

  String toString(){
    return '$nome | ${peso.toStringAsFixed(2)} kg | ${altura.toStringAsFixed(2)} m | ${imc.toStringAsFixed(2)}';
  }

  @override
  bool operator == (Object other) =>
    identical(this, other) ||
    other is Pessoa &&
    runtimeType == other.runtimeType &&
    nome == other.nome;

  @override
  int get hashCode => nome.hashCode;
}