import 'dart:io';

void main() {
    stdout.write('Nhập số que kem cần mua: ');
    int soLuong = int.parse(stdin.readLineSync()!);

    stdout.write('Nhập giá tiền một que kem: ');
    double gia = double.parse(stdin.readLineSync()!);

    double tongTien = soLuong * gia;
    double giam = 0;

    if (soLuong > 10) {
      giam = 0.10;
    } else if (soLuong >= 5 && soLuong <= 10) {
      giam = 0.05;
    }

    double tienPhaiTra = tongTien * (1 - giam);

    print('Tổng tiền: $tongTien');
    print('Tiền phải trả: $tienPhaiTra');
}