import 'MonHoc.dart';

class LyThuyet extends MonHoc {
  double diemTieuLuan;
  double diemCuoiKy;

  LyThuyet({
    String maMon = '',
    String tenMon = '',
    int soTinChi = 0,
    this.diemTieuLuan = 0,
    this.diemCuoiKy = 0,
  }) : super(
          maMon: maMon,
          tenMon: tenMon,
          soTinChi: soTinChi,
        );

  @override
  double tinhDTB() {
    return diemTieuLuan * 0.3 + diemCuoiKy * 0.7;
  }

  @override
  void xuat() {
    print(
      'Ly thuyet | $maMon | $tenMon | $soTinChi TC | '
      'DTB: ${tinhDTB().toStringAsFixed(2)} | '
      'Diem chu: ${quyDoiDiem()}',
    );
  }
}