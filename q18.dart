
void main() {
  var string = 'bom dia';
  print(string);
  print(reverse(string));
}

reverse(string) {
  var r = '';
  for(int i = string.length - 1; i >= 0; i--){
    r += string[i];
  }

  return r;
}