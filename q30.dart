 import 'HuffmanTree.dart';
import 'q21.dart';
 
 void main() {
  var frequency_table = count_letters('abracadabra');
  HuffmanTree huff_tree = new HuffmanTree(frequency_table);
  print(huff_tree.code('abracadabra'));
 }