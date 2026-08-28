import 'HoaDon.dart';

class DaiLyCap1 extends HoaDon {
  int thoiGianHopTac;

  DaiLyCap1({
    String maKhachHang = '',
    String tenKhachHang = '',
    int soLuong = 0,
    double giaBan = 0,
    this.thoiGianHopTac = 0,
  }) : super(
          maKhachHang: maKhachHang,
          tenKhachHang: tenKhachHang,
          soLuong: soLuong,
          giaBan: giaBan,
        );

  @override
  double tinhChietKhau() {
    double phanTram = 30;

    if (thoiGianHopTac > 5) {
      phanTram += thoiGianHopTac - 5;
    }

    if (phanTram > 35) {
      phanTram = 35;
    }

    return tinhTienHang() * phanTram / 100;
  }

  @override
  double tinhTroGia() {
    return 0;
  }

  @override
  void xuat() {
    print(
      'Dai ly cap 1 | Ma: $maKhachHang | Ten: $tenKhachHang | '
      'SL: $soLuong | Gia: $giaBan | '
      'Chiet khau: ${tinhChietKhau()} | '
      'VAT: ${tinhVAT()} | '
      'Tro gia: ${tinhTroGia()} | '
      'Thanh tien: ${tinhThanhTien()}',
    );
  }
}