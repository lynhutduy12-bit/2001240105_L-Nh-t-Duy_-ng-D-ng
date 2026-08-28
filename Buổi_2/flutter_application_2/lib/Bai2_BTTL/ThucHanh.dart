import 'MonHoc.dart';

class ThucHanh extends MonHoc {
  double diem1;
  double diem2;
  double diem3;

  ThucHanh({
    String maMon = '',
    String tenMon = '',
    int soTinChi = 0,
    this.diem1 = 0,
    this.diem2 = 0,
    this.diem3 = 0,
  }) : super(
          maMon: maMon,
          tenMon: tenMon,
          soTinChi: soTinChi,
        );

  @override
  double tinhDTB() {
    return (diem1 + diem2 + diem3) / 3;
  }

  @override
  void xuat() {
    print(
      'Thuc hanh | $maMon | $tenMon | $soTinChi TC | '
      'DTB: ${tinhDTB().toStringAsFixed(2)} | '
      'Diem chu: ${quyDoiDiem()}',
    );
  }
}