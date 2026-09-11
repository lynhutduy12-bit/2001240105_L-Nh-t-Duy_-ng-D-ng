class Phong
{
  String _ma = "";

  get Ma => _ma;

  set Ma (String a)
  {
    _ma = a;
  }

  int _songuoi = 0;

  get SoNguoi => _songuoi;

  set SoNguoi (int a)
  {
    _songuoi = a;
  }

  int _sodien = 0;

  set SoDien (int a)
  {
    _sodien = a;
  }

  get SoDien => _sodien;

  int _sonuoc = 0;

  get SoNuoc => _sonuoc;

  set SoNuoc (int a)
  {
    _sonuoc = a;
  }

  Phong();

  Phong.full(String ma, int sn, int dien, int nuoc)
  {
    _ma = ma;
    _songuoi = sn;
    _sodien = dien;
    _sonuoc = nuoc;
  }

  double Tienphong()
  {
    return 0;
  }

  void hienThi()
  {
    print("Ma phong: $Ma - so nguoi o: $SoNguoi - so dien: $SoDien - so nuoc: $SoNuoc - Tien phong: ${Tienphong()}");
  }

 
}