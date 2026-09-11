import 'MonHoc.dart';
import 'dart:io';

class LyThuyet extends MonHoc
{
  double _diemtl = 0;

  get DiemTL => _diemtl;

  set DiemTL (double a)
  {
    _diemtl = a;
  }

  double _diemck = 0;

  get DiemCK => _diemck;

  set DiemCK (double a)
  {
    _diemck = a;
  }

  LyThuyet();

  LyThuyet.full(String ma, String ten, int tc, double tl, double ck): super.full(ma, ten, tc)
  {
    _diemtl = tl;
    _diemck = ck;
  }

  @override
  double DiemTB()
  {
    return (DiemTL*0.3 + DiemCK*0.7);
  }

   @override
  void nhap() {
    super.nhap();

    stdout.write("Nhap diem tieu luan: ");
    double a = double.parse(stdin.readLineSync()!);
    DiemTL(a);

    stdout.write("Nhap diem cuoi ki: ");
    double b = double.parse(stdin.readLineSync()!);
    DiemCK(b);

  }

  @override
  void hienthi()
  {
    super.hienthi();
    print("Diem tieu luan: $DiemTL - Diem cuoi ki: $DiemCK");
  }
}