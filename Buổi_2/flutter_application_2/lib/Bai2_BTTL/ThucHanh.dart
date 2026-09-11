import 'MonHoc.dart';
import 'dart:io';

class ThucHanh extends MonHoc
{
  double _diem1 = 0;

  get Diem1 => _diem1;

  set Diem1 (double a)
  {
    _diem1 = a;
  }

  double _diem2 = 0;

  get Diem2 => _diem2;

  set Diem2 (double a)
  {
    _diem2 = a;
  }

  double _diem3 = 0;

  get Diem3 => _diem3;

  set Diem3 (double a)
  {
    _diem3 = a;
  }

  ThucHanh();

  ThucHanh.full(String ma, String ten, int tc, double d1, double d2, double d3): super.full(ma, ten, tc)
  {
    _diem1 = d1;
    _diem2 = d2;
    _diem3 = d3;
  }

  @override
  double DiemTB()
  {
    return (Diem1 + Diem2 + Diem3)/3;
  }

  @override
  void nhap() {
    super.nhap();

    stdout.write("Nhap diem mon thu 1: ");
    double a = double.parse(stdin.readLineSync()!);
    Diem1(a);

    stdout.write("Nhap diem mon thu 2: ");
    double b = double.parse(stdin.readLineSync()!);
    Diem2(b);

    stdout.write("Nhap diem mon thu 3: ");
    double c = double.parse(stdin.readLineSync()!);
    Diem3(c);
  }

  @override
  void hienthi() 
  {
    super.hienthi();
    print("Diem lan 1: $Diem1 - Diem lan 2: $Diem2 - Diem lan 3: $Diem3");
  }
}
