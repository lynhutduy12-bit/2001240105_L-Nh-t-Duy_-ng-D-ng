import 'HoaDon.dart';

class KhachHangCongTy extends HoaDon {
  int soNhanVien;

  KhachHangCongTy({
    String maKhachHang = '',
    String tenKhachHang = '',
    int soLuong = 0,
    double giaBan = 0,
    this.soNhanVien = 0,
  }) : super(
          maKhachHang: maKhachHang,
          tenKhachHang: tenKhachHang,
          soLuong: soLuong,
          giaBan: giaBan,
        );

  @override
  double tinhChietKhau() {
    if (soNhanVien > 5000) {
      return tinhTienHang() * 0.07;
    }

    if (soNhanVien > 1000) {
      return tinhTienHang() * 0.05;
    }

    return 0;
  }

  @override
  double tinhTroGia() {
    return 120000.0 * soLuong;
  }

  @override
  void xuat() {
    print(
      'Cong ty | Ma: $maKhachHang | Ten: $tenKhachHang | '
      'SL: $soLuong | Gia: $giaBan | '
      'Chiet khau: ${tinhChietKhau()} | '
      'VAT: ${tinhVAT()} | '
      'Tro gia: ${tinhTroGia()} | '
      'Thanh tien: ${tinhThanhTien()}',
    );
  }
}