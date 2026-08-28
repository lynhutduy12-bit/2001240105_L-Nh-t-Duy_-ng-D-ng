abstract class HoaDon {
  String maKhachHang;
  String tenKhachHang;
  int soLuong;
  double giaBan;

  HoaDon({
    this.maKhachHang = '',
    this.tenKhachHang = '',
    this.soLuong = 0,
    this.giaBan = 0,
  }) {
    if (!RegExp(r'^KH\d{4}$').hasMatch(maKhachHang)) {
      if (maKhachHang.isNotEmpty) {
        throw Exception('Ma khach hang sai dinh dang');
      }
    }

    if (tenKhachHang.trim().isEmpty && tenKhachHang.isNotEmpty) {
      throw Exception('Ten khach hang khong duoc de trong');
    }

    if (soLuong < 0) {
      throw Exception('So luong phai > 0');
    }

    if (giaBan < 0) {
      throw Exception('Gia ban phai > 0');
    }
  }

  double tinhTienHang() {
    return soLuong * giaBan;
  }

  double tinhVAT() {
    return tinhTienHang() * 0.1;
  }

  double tinhChietKhau();

  double tinhTroGia();

  double tinhThanhTien() {
    return tinhTienHang() -
        tinhChietKhau() +
        tinhVAT() -
        tinhTroGia();
  }

  void xuat();
}