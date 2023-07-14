
import 'dart:io';

class Node implements Comparable<Node>{
  late String symbol;
  late int frequency;
  late var parent;
  late var kids = <Node> [];
  late String code;

  Node(String symbol, int frequency) {
    this.symbol = symbol;
    this.frequency = frequency;
    this.parent = null;
  }

  Node.with_kids(String symbol, int frequency, Node right_kid, Node left_kid) {
    this.symbol = symbol;
    this.frequency = frequency;
    this.kids.add(right_kid);
    this.kids.add(left_kid);
    this.parent = null;
  }

  bool hasKids() {
    return kids.length > 0;
  }

  @override
  int compareTo(Node other) {
    return frequency - other.frequency;
  }

  @override
  String toString() {
    return '$symbol - $frequency';
  }
}

class HuffmanTree<T> {
  var priorities = <Node>[];
  late Node root;
  var table = {};

  HuffmanTree(Map<dynamic,dynamic> frequency_table) {
    priorities = def_priorites(frequency_table);
    //print(priorities);
    buildTree(priorities);
    print(table);
  }

  def_priorites(Map<dynamic,dynamic> frequency_table) {
    var raw_list = <Node>[];
    Node node;
    frequency_table.forEach((key, value) => {
      node = new Node(key, value),
      raw_list.add(node)
    });
    quickSort(raw_list, 0, raw_list.length - 1);
    return raw_list;
  }

  buildTree(List<Node> priorities) {
    while(priorities.length > 1) {
      Node least_1 = priorities.removeLast();
      Node least_2 = priorities.removeLast();
      Node new_node = new Node.with_kids(
        '${least_2.symbol}${least_1.symbol}', 
        least_1.frequency + least_2.frequency,
        least_2,
        least_1
      );
      
      least_2.parent = new_node;
      least_2.code = '0';
      
      least_1.parent = new_node;
      least_1.code = '1';
      
      priorities.add(new_node);
      
      quickSort(priorities, 0, priorities.length - 1);
      //print(priorities);
    }
    root = priorities[0];
    table = buildTable(root);
  }

  buildTable(root, [code = '']) {
    var t = {};
    
    search(node, string) {
        String aux;
        if(node.hasKids()) {
            node.kids.forEach((kid) => {
              aux = string + kid.code,
              search(kid, aux)
            });
        } else {
          t[node.symbol] = string;
        }
        return t;
    }
    return search(root, code);
}

  String code(String msg) {
    var r = [];
    msg.split('').forEach((char) => r.add(table[char]));
    return r.join(' ');
  }
}

void quickSort(List<Node> arr, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(arr, low, high);
    quickSort(arr, low, pivotIndex - 1);
    quickSort(arr, pivotIndex + 1, high);
  }
}

int partition(List<Node> arr, int low, int high) {
  int pivot = arr[high].frequency;
  int i = low - 1;
  
  for (int j = low; j < high; j++) {
    if (arr[j].frequency > pivot) {
      i++;
      swap(arr, i, j);
    }
  }
  
  swap(arr, i + 1, high);
  return i + 1;
}

void swap(List<Node> arr, int i, int j) {
  Node temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}
