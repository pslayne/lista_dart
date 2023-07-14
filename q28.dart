import 'Generic.dart';

void main() {
  print(isValid('()'));
  print(isValid('(a)b'));
  print(isValid('(('));
  print(isValid(')('));
  print(isValid('()()'));
  print(isValid('(a)(b)'));
  print(isValid('(a)(b'));
  print(isValid(')a()b('));
}

bool isValid(String string) {
  Pilha<String> parentesis = new Pilha();

  string.split('').forEach((char) => {
    if(char == '(')  
      parentesis.add(char)
    else if(char == ')' && !parentesis.isEmpty()) 
      parentesis.pop()
  });

  return parentesis.isEmpty() ? true : false;
}