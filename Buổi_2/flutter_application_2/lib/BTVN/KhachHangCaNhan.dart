import 'HoaDon.dart';

class KhachHangCaNhan extends HoaDon {
  double khoangCach;

  KhachHangCaNhan({
    String maKhachHang = '',
    String tenKhachHang = '',
    int soLuong = 0,
    double giaBan = 0,
    this.khoangCach = 0,
  }) : super(
          maKhachHang: maKhachHang,
          tenKhachHang: tenKhachHang,
          soLuong: soLuong,
          giaBan: giaBan,
        );

  @override
  double tinhChietKhau() {
    double ck = 0;

    if (soLuong >= 3) {
      ck = tinhTienHang() * 0.05;
    }

    if (khoangCach < 10) {
      ck += 50000 * soLuong;
    }

    return ck;
  }

  @override
  double tinhTroGia() {
    double troGia = tinhTienHang() * 0.02;

    if (soLuong > 2) {
      troGia += 100000;
    }

    return troGia;
  }

  @override
  void xuat() {
    print(
      'Ca nhan | Ma: $maKhachHang | Ten: $tenKhachHang | '
      'SL: $soLuong | Gia: $giaBan | '
      'Chiet khau: ${tinhChietKhau()} | '
      'VAT: ${tinhVAT()} | '
      'Tro gia: ${tinhTroGia()} | '
      'Thanh tien: ${tinhThanhTien()}',
    );
  }
}