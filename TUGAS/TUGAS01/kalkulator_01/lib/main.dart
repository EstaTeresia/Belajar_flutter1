import 'dart:io';

void main() {
  while (true) {
    print('\nKalkulator Sederhana');
    print('Pilih operasi:');
    print('1. Penjumlahan (+)');
    print('2. Pengurangan (-)');
    print('3. Perkalian (*)');
    print('4. Pembagian (/)');
    print('5. Keluar');
    stdout.write('Masukkan pilihan (1-5): ');
    String? choice = stdin.readLineSync();

    if (choice == '5') {
      print('Terima kasih telah menggunakan kalkulator!');
      break;
    }

    stdout.write('Masukkan angka pertama: ');
    double? num1 = double.tryParse(stdin.readLineSync() ?? '0');
    stdout.write('Masukkan angka kedua: ');
    double? num2 = double.tryParse(stdin.readLineSync() ?? '0');

    if (num1 == null || num2 == null) {
      print('Input tidak valid! Coba lagi.');
      continue;
    }

    double result = 0;
    switch (choice) {
      case '1':
        result = num1 + num2;
        print('Hasil: $num1 + $num2 = $result');
        break;
      case '2':
        result = num1 - num2;
        print('Hasil: $num1 - $num2 = $result');
        break;
      case '3':
        result = num1 * num2;
        print('Hasil: $num1 * $num2 = $result');
        break;
      case '4':
        if (num2 == 0) {
          print('Kesalahan: Pembagian dengan nol tidak diperbolehkan!');
        } else {
          result = num1 / num2;
          print('Hasil: $num1 / $num2 = $result');
        }
        break;
      default:
        print('Pilihan tidak valid! Coba lagi.');
    }
  }
}
