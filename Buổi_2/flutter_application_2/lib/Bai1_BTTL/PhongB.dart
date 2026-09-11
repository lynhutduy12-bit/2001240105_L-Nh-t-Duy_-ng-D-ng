import 'Phong.dart';

class PhongB extends Phong
{
  int _khoiluonggiat = 0;

  get KhoiLuongGiat => _khoiluonggiat;

  set khoiluongGiat (int a)
  {
    _khoiluonggiat = a;
  }

  int _somay = 0;

  get SoMay => _somay;

  set SoMay (int a)
  {
    _somay = a;
  }

  PhongB();

  PhongB.full(String ma, int sn, int dien, int nuoc, int kl, int may): super.full(ma, sn, dien, nuoc)
  {
    _khoiluonggiat = kl;
    _somay = may;
  }

  @override
  double Tienphong()
  {
    return (2000 + 2*SoDien + 8*SoNuoc + KhoiLuongGiat+5 + SoMay+100).toDouble();
  }

  @override
  void hienThi()
  {
    super.hienThi();
    print("Khoi luong giat: $KhoiLuongGiat - so may: $SoMay"); 
  }
}