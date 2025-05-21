import 'dart:ffi';
import 'dart:io';
void main(){
  print("Calculadora de Média de Notas");
  print("");
  
  List<double> notas = [];
  double soma = 0.0;
  for (int i = 1; i <= 5; i++) {
    print("Informe a nota $i: ");
    String? entrada = stdin.readLineSync();
    
    if (entrada == null) {
      print("Entrada inválida.");
      return;
    }
    
    double nota = double.parse(entrada);
    notas.add(nota);

    soma += nota;
  }  

  double media = soma / notas.length;
  print("A média das notas é: ${media.toStringAsFixed(2)}");
}



