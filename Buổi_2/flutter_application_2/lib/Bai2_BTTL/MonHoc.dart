import 'dart:io';

class MonHoc
{
  String _mamh = "";

  get MaMH => _mamh;

  set MaMH (String a)
  {
    _mamh = a;
  }

  String _tenmh = "";

  get TenMH => _tenmh;

  set TenMH (String a)
  {
    _tenmh = a;
  }

  int _sotc = 0;

  get SoTC => _sotc;

  set SoTC (int a)
  {
    _sotc = a;
  }

  MonHoc();

  MonHoc.full(String ma, String ten, int tc)
  {
    _mamh = ma;
    _tenmh = ten;
    _sotc = tc;
  }

  double DiemTB()
  {
    return 0;
  }

  void nhap()
  {
    stdout.write("Nhap ma mon hoc: ");
    String a = stdin.readLineSync()!;
    MaMH(a);

    stdout.write("Nhap ten mon hoc: ");
    String b = stdin.readLineSync()!;
    TenMH(b);

    stdout.write("Nhap so tin chi: ");
    int c =int.parse(stdin.readLineSync()!);
    SoTC(c);
  }

  void hienthi()
  {
    print("Ma mon hoc: $MaMH - Ten mon hoc; $TenMH - So tin chi: $SoTC - Diem trung binh: ${DiemTB()}");
  }
}