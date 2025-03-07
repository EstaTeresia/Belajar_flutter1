import 'dart:async';
import 'dart:io';

class Calculator {
  Future<double> add(double a, double b) async {
    return Future.delayed(Duration(milliseconds: 500), () => a + b);
  }

  Future<double> subtract(double a, double b) async {
    return Future.delayed(Duration(milliseconds: 500), () => a - b);
  }

  Future<double> multiply(double a, double b) async {
    return Future.delayed(Duration(milliseconds: 500), () => a * b);
  }

  Future<double> divide(double a, double b) async {
    if (b == 0) {
      throw Exception("Kesalahan: Tidak bisa membagi dengan nol!");
    }
    return Future.delayed(Duration(milliseconds: 500), () => a / b);
  }
}

Future<void> main() async {
  Calculator calculator = Calculator();

  while (true) {
    print("\n==== Kalkulator Terminal ====");
    try {
      stdout.write("Masukkan angka pertama: ");
      double num1 = double.parse(stdin.readLineSync()!);

      stdout.write("Masukkan angka kedua: ");
      double num2 = double.parse(stdin.readLineSync()!);

      stdout.write("Pilih operasi (+, -, *, /) atau ketik 'exit' untuk keluar: ");
      String operation = stdin.readLineSync()!;

      if (operation.toLowerCase() == "exit") {
        print("Terima kasih telah menggunakan kalkulator!");
        break;
      }

      double result;
      switch (operation) {
        case '+':
          result = await calculator.add(num1, num2);
          break;
        case '-':
          result = await calculator.subtract(num1, num2);
          break;
        case '*':
          result = await calculator.multiply(num1, num2);
          break;
        case '/':
          result = await calculator.divide(num1, num2);
          break;
        default:
          print("Operasi tidak valid! Gunakan (+, -, *, /)");
          continue;
      }

      print("Hasil: $result");

    } catch (e) {
      print("Kesalahan: ${e.toString()}");
    }

    stdout.write("\nApakah ingin melanjutkan? (y/n): ");
    String? lanjut = stdin.readLineSync();
    if (lanjut == null || lanjut.toLowerCase() != 'y') {
      print("Terima kasih telah menggunakan kalkulator!");
      break;
    }
  }
}
