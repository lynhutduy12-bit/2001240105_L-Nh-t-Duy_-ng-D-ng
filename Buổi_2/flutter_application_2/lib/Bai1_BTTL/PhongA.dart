import 'phong.dart';

class PhongA extends Phong {
  int soNguoiThan;

  PhongA({
    String maPhong = '',
    int soNguoi = 0,
    double soDien = 0,
    double soNuoc = 0,
    this.soNguoiThan = 0,
  }) : super(
          maPhong: maPhong,
          soNguoi: soNguoi,
          soDien: soDien,
          soNuoc: soNuoc,
        );

  @override
  double tinhTienPhong() {
    return 1400 + 2 * soDien + 8 * soNuoc + 50 * soNguoiThan;
  }

  @override
  void xuat() {
    print(
      'Phong A | Ma: $maPhong | So nguoi: $soNguoi | '
      'So dien: $soDien | So nuoc: $soNuoc | '
      'So nguoi than: $soNguoiThan | '
      'Tien phong: ${tinhTienPhong()}',
    );
  }
}