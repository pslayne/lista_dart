
void main() {
  var vetor = [9, 23, 97, 4, 5, 73, 479, 8];
  var max, min;

  for(int i = 0; i < vetor.length; i++){
    if(i == 0) 
      max = min = vetor[i];
    else {
      if(vetor[i] < min) min = vetor[i];
      if(vetor[i] > max) max = vetor[i];
    }
  }
  print(vetor);
  print('máximo = $max \nmínimo = $min');
}
