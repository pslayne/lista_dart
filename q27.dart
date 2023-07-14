import 'Generic.dart';

void main(){
  Pilha<int> inteiros = new Pilha();
  inteiros.add(1);
  inteiros.add(2);
  inteiros.add(3);
  inteiros.add(4);
  inteiros.add(5);
  inteiros.show();

  print('${inteiros.peek()}\n');

  inteiros.pop();
  inteiros.show();

  Pilha<String> words = new Pilha();
  words.add('rosa');
  words.add('amarelo');
  words.add('azul');
  words.add('verde');
  words.add('vermelho');
  words.show();

  print('${words.peek()}\n');

  words.pop();
  words.show();

  words.pop();
  words.show();
}