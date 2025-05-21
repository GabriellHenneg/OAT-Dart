void main() {
  double precoInicial = 200.00; 
  double percentualDesconto = 15.0; 

  double precoFinal = precoInicial * (1 - percentualDesconto / 100);

  print('Preço inicial: R\$${precoInicial.toStringAsFixed(2)}');
  print('Desconto: ${percentualDesconto.toStringAsFixed(2)}%');
  print('Preço final com desconto: R\$${precoFinal.toStringAsFixed(2)}');
}