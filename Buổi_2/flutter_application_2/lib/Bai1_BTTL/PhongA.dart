import 'Phong.dart';

class PhongA extends Phong
{
  int _songuoithan = 0;

  get SoNguoithan => _songuoithan;

  set Songuoithan (int a)
  {
    _songuoithan = a;
  }

  PhongA();

  PhongA.full(String ma, int sn, int dien, int nuoc, int songuoio): super.full(ma, sn, dien, nuoc)
  { 
    _songuoithan = songuoio;
  }

  @override
  double Tienphong()
  {
    return (1400 + 2*SoDien + 8*SoNuoc + 50*SoNguoithan).toDouble();
  }

  @override
  void hienThi()
  {
    super.hienThi();
    print("So nguoi than da tham va o lai qua dem: $SoNguoithan");
  }
}