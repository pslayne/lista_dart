
void main(){
  print(count_letters('casa'));
  print(count_letters('almanaque'));
  print(count_letters('arara'));
}

count_letters(word){
  var letters = new Map();
  word.split('').forEach((letter) => {
    if(letters.containsKey(letter))
      letters.update(letter, (value) => ++value)
    else 
      letters[letter] = 1
  });
  return letters;
}