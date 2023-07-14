
void main() {
  print(anagram('pato', 'topa'));
  print(anagram('pato', 'tpao'));
  print(anagram('pato', 'topa '));
  print(anagram('arara', 'aaarra'));
}

bool anagram(String s1, String s2) {
  if(s1.length == s2.length) {
    var s1_split = s1.toLowerCase().split('');
    var s2_split = s2.toLowerCase().split('');
    for(int i = 0; i < s2.length; i++) {
      if(!s1_split.contains(s2_split[i])) 
        return false;
    }
    return true;
  } else {
    return false;
  }
}