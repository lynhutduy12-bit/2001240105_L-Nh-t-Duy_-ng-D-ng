import 'dart:io';

void main() {
    stdout.write('Nhập số nguyên dương > 10: ');
    int n = int.parse(stdin.readLineSync()!);

    int temp = n;
    int soChuSo = 0;
    int tong = 0;
    bool coSoLe = false;

    while (temp > 0) {
      int chuSo = temp % 10;
      tong += chuSo;

      if (chuSo % 2 != 0) {
        coSoLe = true;
      }

      soChuSo++;
      temp ~/= 10;
    }

    print('Số có $soChuSo chữ số');
    print('Tổng các chữ số: $tong');

    if (coSoLe) {
      print('Số có chứa chữ số lẻ');
    } else {
      print('Số không chứa chữ số lẻ');
    }
}