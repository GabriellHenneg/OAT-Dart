import 'dart:io';
void main() {
  
  print("Informe um número inteiro: ");
  String? entrada = stdin.readLineSync();
  int numero = entrada != null ? int.parse(entrada) : 0;
  verificarPrimo(numero);
}

void verificarPrimo(int numero) {
  if (numero <= 1) {
    print('$numero não é um número primo.');
    return;
  }

  bool ehPrimo = true;
  List<int> divisores = [];

  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) {
      ehPrimo = false;
      divisores.add(i);
    }
  }

  if (ehPrimo) {
    print('$numero é um número primo.');
  } else {
    print('$numero não é um número primo. Seus divisores são: ${divisores.join(', ')}');
  }
}