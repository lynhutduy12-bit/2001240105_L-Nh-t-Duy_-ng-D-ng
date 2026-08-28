import 'dart:io';
import 'phong.dart';
import 'phongA.dart';
import 'phongB.dart';

class DanhSachPhong {
  List<Phong> ds = [];

  void them(Phong p) {
    ds.add(p);
  }

  void docFile(String tenFile) {
    List<String> lines = File(tenFile).readAsLinesSync();

    for (String line in lines) {
      if (line.trim().isEmpty) {
        continue;
      }

      List<String> a = line.split('#');

      if (a[0].startsWith('A')) {
        PhongA p = PhongA(
          maPhong: a[0],
          soNguoi: int.parse(a[1]),
          soDien: double.parse(a[2]),
          soNuoc: double.parse(a[3]),
          soNguoiThan: int.parse(a[4]),
        );

        ds.add(p);
      } else if (a[0].startsWith('B')) {
        PhongB p = PhongB(
          maPhong: a[0],
          soNguoi: int.parse(a[1]),
          soDien: double.parse(a[2]),
          soNuoc: double.parse(a[3]),
          giatui: double.parse(a[4]),
          soMay: int.parse(a[5]),
        );

        ds.add(p);
      }
    }
  }

  void xuat() {
    for (Phong p in ds) {
      p.xuat();
    }
  }

  void xuatPhongNhieuHon2Nguoi() {
    for (Phong p in ds) {
      if (p.soNguoi > 2) {
        p.xuat();
      }
    }
  }

  double tinhTongTien() {
    double tong = 0;

    for (Phong p in ds) {
      tong += p.tinhTienPhong();
    }

    return tong;
  }

  void sapXepGiamDanSoDien() {
    ds.sort((Phong a, Phong b) {
      return b.soDien.compareTo(a.soDien);
    });
  }

  void xuatPhongA() {
    for (Phong p in ds) {
      if (p is PhongA) {
        p.xuat();
      }
    }
  }
}