import 'MonHoc.dart';
import 'dart:io';

class DoAn extends MonHoc
{
    double _diemgvhd = 0;

    get DiemGVHD => _diemgvhd;

    set DiemGVHD (double a)
    {
        _diemgvhd = a;
    }

    double _diemgvpb = 0;

    get DiemGVPB => _diemgvpb;

    set DiemGVPB (double a)
    {
        _diemgvpb = a;
    }

    DoAn();

    DoAn.full(String ma, String ten, int tc, double d1, double d2): super.full(ma, ten, tc)
    {
        _diemgvhd = d1;
        _diemgvpb = d2;
    }

    @override
    double DiemTB() {
        return (DiemGVHD + DiemGVPB)/2;
    }   

     @override
  void nhap() {
    super.nhap();

    stdout.write("Nhap diem giao vien huong dan: ");
    double a = double.parse(stdin.readLineSync()!);
    DiemGVHD(a);

    stdout.write("Nhap diem giao vien phan bien: ");
    double b = double.parse(stdin.readLineSync()!);
    DiemGVPB(b);

  }
    

    @override
    void hienthi() {
        super.hienthi();
        print("Diem giao vien huong dan: $DiemGVHD - Diem giao vien phan bien: $DiemGVPB");
    }
}