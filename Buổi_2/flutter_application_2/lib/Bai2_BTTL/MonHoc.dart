abstract class MonHoc {
  String maMon;
  String tenMon;
  int soTinChi;

  MonHoc({
    this.maMon = '',
    this.tenMon = '',
    this.soTinChi = 0,
  });

  double tinhDTB();

  String quyDoiDiem() {
    double diem = tinhDTB();

    if (diem >= 8.5) {
      return 'A';
    } else if (diem >= 7.0) {
      return 'B';
    } else if (diem >= 5.5) {
      return 'C';
    } else if (diem >= 4.0) {
      return 'D';
    } else {
      return 'F';
    }
  }

  void xuat();
}