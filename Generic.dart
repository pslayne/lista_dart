class Lista<T> {
  var list = <T>[];
  
  create(T element){
    list.add(element);
  }

  update(T find, T replace){
    if(list.contains(find)) {
      int index = list.indexOf(find);
      list.removeAt(index);
      list.insert(index, replace);
    }
  }

  read(){
    list.forEach((element) => print(element));
    print('');
  }
  
  delete(T element){
    list.remove(element);
  }

}

class Pilha<T> {
  var stack = <T>[];
  late int length;
  late int index;

  Pilha(){
    length = 0;
    index = -1;
  }
  
  isEmpty(){
    return length == 0 ? true : false;
  }
  
  add(T element){
    stack.add(element);
    index++;
    length++;
  }

  peek(){
    return stack[index];
  }

  pop(){
    stack.removeAt(index);
    index--;
    length--;
  }

  show(){
    print(peek());
    print('-----------------');
    for(int i = length - 2; i >= 0; i--) {
      print(stack[i]);
    }
    print('');
  }


}