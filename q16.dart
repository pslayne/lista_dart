
void main() {
  var v = [1, 2, 3, 4];
  print(reverse(v));
}

reverse(vetor) {
  var r = [];
  for(int i = vetor.length - 1; i >= 0; i--){
    r.add(vetor[i]);
  }

  return r;
}