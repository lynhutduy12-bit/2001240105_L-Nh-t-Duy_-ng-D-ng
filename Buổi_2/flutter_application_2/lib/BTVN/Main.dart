import 'dart:io';
import 'DanhSachHoaDon.dart';

void main() {
  DanhSachHoaDon ds = DanhSachHoaDon();

  ds.nhap();

  print('\nDANH SACH HOA DON');
  ds.xuat();

  print('\nTONG THANH TIEN: ${ds.tongThanhTien()}');

  print('\nTONG TIEN TRO GIA: ${ds.tongTroGia()}');

  print('\nKHACH HANG MUA NHIEU NHAT');
  ds.khachHangMuaNhieuNhat();

  print(
    '\nTONG CHIET KHAU DOI VOI KHACH HANG CONG TY: '
    '${ds.tongChietKhauCongTy()}',
  );

  ds.sapXep();

  print('\nDANH SACH SAU KHI SAP XEP');
  ds.xuat();

  stdout.write('\nNhap ma khach hang can tim: ');
  String ma = stdin.readLineSync()!;

  print('\nKET QUA TIM KIEM');
  ds.timTheoMa(ma);
}