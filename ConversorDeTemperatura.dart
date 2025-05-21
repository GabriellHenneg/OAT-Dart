import "dart:io";

void main() {

  print("°C°C°C°C°C COVERSOR DE TEMPERATURA °F°F°F°F°F");
  print("");

  print("Escolha uma opção:");
  print("1. Celsius para Fahrenheit");
  print("2. Fahrenheit para Celsius");
  print("3. Sair");

  String? opcao = stdin.readLineSync();

  switch (opcao) {
    
     case "1":
      print ("Informe a temperatura em Celsius: ");
      String? entrada = stdin.readLineSync();
 
      double temperaturaCelsius = entrada != null ? double.parse(entrada) : 0.0;
  
      if (entrada == null) {
        print("Entrada inválida.");
        
        return;
      }
  
    double temperaturaFarrenheit = (temperaturaCelsius * 1.8) + 32;
    print("${temperaturaCelsius}°C é igual a ${temperaturaFarrenheit}°F.");

    print("");
    print ("°F°F°F°F°F°F°F°F°F °C°C°C°C°C°C°C°C°C");

      break;


    case "2":
      print ("Informe a temperatura em Fahrenheit: ");
      String? entrada = stdin.readLineSync();

      double temperaturaFarrenheit = entrada != null ? double.parse(entrada) : 0.0;

       if (entrada == null) {
        print("Entrada inválida.");
        
        return;
      }

      double temperaturaCelsius = (temperaturaFarrenheit - 32) / 1.8;
      print("${temperaturaFarrenheit}°F é igual a ${temperaturaCelsius}°C.");
      break;

    case "3":
      print("Saindo...");
      break;

    default:
      print("Opção inválida.");
  }

}