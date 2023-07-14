import 'q22.dart';
import 'dart:io';

void main() {
  var data = count_words('casa prédio prédio casa vermelho azul verde preto verde azul vermelho vermelho rosa');
  var filePath = 'words.csv';
  
  write_csv(data, filePath);
  print(read_csv(filePath));
}

void write_csv(Map<dynamic, dynamic> data, String filePath) {
  var csvLines = <String>[];
  csvLines.add(data.keys.join(';'));
  csvLines.add(data.values.join(';'));
  
  var file = File(filePath);
  file.writeAsStringSync(csvLines.join('\n'));
}

Map<dynamic, dynamic> read_csv(String filePath) {
  var file = File(filePath);
  var data = <dynamic, dynamic>{};

  if (!file.existsSync()) {
    return data;
  }

  var linhas = file.readAsLinesSync();

  if (linhas.isEmpty) {
    return data;
  }

  var cabecalho = linhas[0].split(';');

  for (var i = 1; i < linhas.length; i++) {
    var valores = linhas[i].split(';');

    for (var j = 0; j < cabecalho.length; j++) {
      var chave = cabecalho[j];
      if (!data.containsKey(chave)) {
        data[chave] = [];
      }

      var valor = valores[j];
      if (valor.isNotEmpty) {
        data[chave].add(valor);
      } else {
        data[chave].add(null);
      }
    }
  }

  return data;
}