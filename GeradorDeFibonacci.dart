import "dart:io";
void main(){

  print("Gerador de Fibonacci");
  print("");
  
  print("Informe o número de termos da sequência: ");
  String? parada = stdin.readLineSync();
  
  if (parada == null) {
    print("Entrada inválida.");
    return;
  }
  
  int numeroDeTermos = int.parse(parada);

  List<int> fibonacci = [0, 1];

  for (int i = 2; i < numeroDeTermos; i++) {
    int proximoTermo = fibonacci[i - 1] + fibonacci[i - 2];
    fibonacci.add(proximoTermo);
  }

  print("Os primeiros ${numeroDeTermos} termos da sequência de Fibonacci são: ");  

  for (int i = 0; i < numeroDeTermos; i++) {
    if(fibonacci[i] > numeroDeTermos){
      break;
    }
    print(fibonacci[i]);
    
  }


}