
void main(){
  print(count_words('casa amarela'));
  print(count_words('estude muito sempre sempre estude'));
  print(count_words('casa prédio prédio casa vermelho azul verde preto verde azul vermelho vermelho rosa'));
}

count_words(frase){
  var words = new Map();
  frase.split(' ').forEach((letter) => {
    if(words.containsKey(letter))
      words.update(letter, (value) => ++value)
    else 
      words[letter] = 1
  });
  return words;
}