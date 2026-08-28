abstract class Phong {
  String maPhong;
  int soNguoi;
  double soDien;
  double soNuoc;

  Phong({
    this.maPhong = '',
    this.soNguoi = 0,
    this.soDien = 0,
    this.soNuoc = 0,
  });

  double tinhTienPhong();

  void xuat();
}