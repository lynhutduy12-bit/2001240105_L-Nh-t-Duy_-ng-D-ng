import 'DanhSachPhong.dart';

void main() {
  DanhSachPhong ds = DanhSachPhong();

  ds.docFile('lib/Bai1_BTTL/phongthue.txt');

  print('DANH SACH PHONG THUE');
  ds.xuat();

  print('\nPHONG CO SO NGUOI > 2');
  ds.xuatPhongNhieuHon2Nguoi();

  print('\nTONG TIEN PHONG: ${ds.tinhTongTien()}');

  ds.sapXepGiamDanSoDien();

  print('\nDANH SACH GIAM DAN THEO SO DIEN');
  ds.xuat();

  print('\nDANH SACH PHONG LOAI A');
  ds.xuatPhongA();
}