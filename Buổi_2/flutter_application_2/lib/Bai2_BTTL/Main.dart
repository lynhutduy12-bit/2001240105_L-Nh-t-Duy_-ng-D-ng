import 'dart:io';
import 'DanhSachMonHoc.dart';

void main() {
  DanhSachMonHoc ds = DanhSachMonHoc();

  ds.nhap();

  print('\nDANH SACH MON HOC');
  ds.xuat();

  print('\nKIEM TRA SAP XEP THEO TEN');

  if (ds.kiemTraSapXepTheoTen()) {
    print('Danh sach da duoc sap xep tang dan theo ten');
  } else {
    print('Danh sach chua duoc sap xep tang dan theo ten');
  }

  ds.sapXepTangDanTinChi();

  print('\nDANH SACH TANG DAN THEO SO TIN CHI');
  ds.xuat();

  print('\nMON HOC CO SO TIN CHI CAO NHAT');
  ds.xuatMonTinChiCaoNhat();

  stdout.write('\nNhap ten mon hoc can tim: ');
  String ten = stdin.readLineSync()!;

  ds.timMonHoc(ten);

  print(
    '\nSO TIN CHI TRUNG BINH: '
    '${ds.tinhTinChiTrungBinh().toStringAsFixed(2)}',
  );

  DanhSachMonHoc dsFile = DanhSachMonHoc();

  dsFile.docFile('lib/Bai2_BTTL/monhoc.txt');

  print('\nDANH SACH DOC TU FILE');
  dsFile.xuat();

  print(
    '\nSO TIN CHI TRUNG BINH TU FILE: '
    '${dsFile.tinhTinChiTrungBinh().toStringAsFixed(2)}',
  );
}