import 'MonHoc.dart';

class DoAn extends MonHoc {
  double diemGVHD;
  double diemGVPB;

  DoAn({
    String maMon = '',
    String tenMon = '',
    int soTinChi = 0,
    this.diemGVHD = 0,
    this.diemGVPB = 0,
  }) : super(
          maMon: maMon,
          tenMon: tenMon,
          soTinChi: soTinChi,
        );

  @override
  double tinhDTB() {
    return (diemGVHD + diemGVPB) / 2;
  }

  @override
  void xuat() {
    print(
      'Do an | $maMon | $tenMon | $soTinChi TC | '
      'DTB: ${tinhDTB().toStringAsFixed(2)} | '
      'Diem chu: ${quyDoiDiem()}',
    );
  }
}