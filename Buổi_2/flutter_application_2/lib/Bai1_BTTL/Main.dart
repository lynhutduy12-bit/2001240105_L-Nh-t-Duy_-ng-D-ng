import 'DanhSachPhong.dart';

void main() {
  Danhsachphong a = Danhsachphong();

  a.docfile();
  print("");
  a.hienthi();
  print("");
  a.xuatlonhon2();
  print("");
  print("Tong tien tat ca cac phong la: ${a.tinhtongtienthu()}");
  print("");
  print("Danh sach phong sau khi sap xep: ");
  a.sapxepgiamdan();
  a.hienthi();
  print("");
  print("Danh sach phong A: ");
  a.inloaia();
  print("Danh sach phong sau khi sap xep: ");
  a.sapxeptangdan();
  a.hienthi();
}