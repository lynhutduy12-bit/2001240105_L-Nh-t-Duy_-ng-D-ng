import 'phong.dart';

class PhongB extends Phong {
  double giatui;
  int soMay;

  PhongB({
    String maPhong = '',
    int soNguoi = 0,
    double soDien = 0,
    double soNuoc = 0,
    this.giatui = 0,
    this.soMay = 0,
  }) : super(
          maPhong: maPhong,
          soNguoi: soNguoi,
          soDien: soDien,
          soNuoc: soNuoc,
        );

  @override
  double tinhTienPhong() {
    return 2000 + 2 * soDien + 8 * soNuoc + giatui * 5 + soMay * 100;
  }

  @override
  void xuat() {
    print(
      'Phong B | Ma: $maPhong | So nguoi: $soNguoi | '
      'So dien: $soDien | So nuoc: $soNuoc | '
      'Giat ui: $giatui | So may: $soMay | '
      'Tien phong: ${tinhTienPhong()}',
    );
  }
}