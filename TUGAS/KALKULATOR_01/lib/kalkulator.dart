import 'dart:io';

void main() {
  while (true) {
    print('Masukkan angka pertama:');
    double num1 = double.parse(stdin.readLineSync()!);

    print('Masukkan operator (+, -, *, /):');
    String operator = stdin.readLineSync()!;

    print('Masukkan angka kedua:');
    double num2 = double.parse(stdin.readLineSync()!);

    double result;
    switch (operator) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          print('Kesalahan: Pembagian dengan nol tidak diperbolehkan.');
          continue;
        }
        break;
      default:
        print('Operator tidak valid.');
        continue;
    }

    print('Hasil: $result');
    
    print('Apakah ingin menghitung lagi? (y/n)');
    String? again = stdin.readLineSync();
    if (again?.toLowerCase() != 'y') {
      break;
    }
  }
}
