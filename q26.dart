import 'dart:io';
import 'Generic.dart';
import 'Pessoa.dart';
import 'Integer.dart';

void main() {
  Lista<Pessoa> pessoas = Lista();
  pessoas.create(new Pessoa('a', 48, 1.63));
  pessoas.create(new Pessoa('b', 48, 1.63));
  pessoas.create(new Pessoa('c', 48, 1.63));
  pessoas.create(new Pessoa('d', 48, 1.63));
  pessoas.read();

  pessoas.update(new Pessoa('a', 48, 1.63), new Pessoa('a', 50, 1.63));
  pessoas.read();

  pessoas.delete(new Pessoa('b', 48, 1.63));
  pessoas.read();

  Lista<Integer> inteiros = Lista();
  inteiros.create(new Integer(1));
  inteiros.create(new Integer(2));
  inteiros.create(new Integer(3));
  inteiros.create(new Integer(4));
  inteiros.read();

  inteiros.update(new Integer(1), new Integer(5));
  inteiros.read();

  inteiros.delete(new Integer(2));
  inteiros.read();

}