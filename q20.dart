import 'dart:io';
import 'dart:typed_data';
import 'Pessoa.dart';
import 'q19.dart';

void main() {
  var filePath = 'pessoas.bin';
  var pessoas = cadastro();
  write_bin(filePath, pessoas);
  pessoas = read_bin(filePath);
   
  pessoas.forEach((pessoa) => { print(pessoa) });
  
}

write_bin(filePath, content) {
  var file = File(filePath);
  var randomAccessFile = file.openSync(mode: FileMode.write);

  for (var data in content) {
    data.nome += '\0';
    //print(data.nome);
    var nomeBytes = data.nome.codeUnits;
    var pesoBytes = Uint8List(8)..buffer.asByteData().setFloat64(0, data.peso, Endian.little);
    var alturaBytes = Uint8List(8)..buffer.asByteData().setFloat64(0, data.altura, Endian.little);
    var imcBytes = Uint8List(8)..buffer.asByteData().setFloat64(0, data.imc, Endian.little);
    
    randomAccessFile.writeFromSync(Uint8List.fromList(nomeBytes));
    randomAccessFile.writeFromSync(pesoBytes);
    randomAccessFile.writeFromSync(alturaBytes);
    randomAccessFile.writeFromSync(imcBytes);
  }

  randomAccessFile.closeSync();
}

read_bin (filePath) {
  var file = File(filePath);
  var pessoas = <Pessoa>[];

  if (file.existsSync()) {
    var randomAccessFile = file.openSync(mode: FileMode.read);

    var length = randomAccessFile.lengthSync();
    var bytesRead = 0;

    while (bytesRead < length) {
      String nome = '';
      var nomeByte, aux;
      while(true) {
        nomeByte = randomAccessFile.readSync(1);
        aux = String.fromCharCodes(nomeByte);
        if(aux == '\0')
          break;
        nome += aux;
        //print(aux);
        //stdin.readLineSync();
      }

      var alturaBytes = randomAccessFile.readSync(8);
      var pesoBytes = randomAccessFile.readSync(8);
      var imcBytes = randomAccessFile.readSync(8);

      var altura = ByteData.sublistView(alturaBytes).getFloat64(0, Endian.little);
      var peso = ByteData.sublistView(pesoBytes).getFloat64(0, Endian.little);
      var imc = ByteData.sublistView(imcBytes).getFloat64(0, Endian.little);

      var pessoa = Pessoa.imc(nome, altura, peso, imc);
      pessoas.add(pessoa);

      bytesRead += 34; // 10 bytes (nome) + 8 bytes (altura) + 8 bytes (peso) + 8 bytes (imc)
    }

    randomAccessFile.closeSync();
  }

  return pessoas;
}
