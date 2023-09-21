import 'dart:io';

void main() {
  // Solicita ao usuário o primeiro número
  stdout.write("Digite o primeiro número: ");
  double primeiroNumero = double.parse(stdin.readLineSync()!);

  // Solicita ao usuário a operação desejada
  stdout.write("Digite a operação (+, -, *, /): ");
  String operacao = stdin.readLineSync()!;

  // Solicita ao usuário o segundo número
  stdout.write("Digite o segundo número: ");
  double segundoNumero = double.parse(stdin.readLineSync()!);

  // Calcula o resultado com base na operação
  double resultado = calcular(primeiroNumero, segundoNumero, operacao);

  // Exibe o resultado
  print("Resultado: $resultado");
}

double calcular(double num1, double num2, String operacao) {
  double resultado;

  // Verifica a operação e realiza o cálculo correspondente
  if (operacao == "+") {
    resultado = num1 + num2;
  } else if (operacao == "-") {
    resultado = num1 - num2;
  } else if (operacao == "*") {
    resultado = num1 * num2;
  } else if (operacao == "/") {
    if (num2 != 0) {
      resultado = num1 / num2;
    } else {
      print("Erro: Divisão por zero não é permitida.");
      exit(1); // Encerra o programa com código de erro 1
    }
  } else {
    print("Operação inválida.");
    exit(1); // Encerra o programa com código de erro 1
  }

  return resultado;
}
