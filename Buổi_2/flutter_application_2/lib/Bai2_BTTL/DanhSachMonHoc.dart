import 'dart:io';
import 'MonHoc.dart';
import 'LyThuyet.dart';
import 'ThucHanh.dart';
import 'DoAn.dart';

class DanhSachMonHoc {
  List<MonHoc> ds = [];

  void them(MonHoc mh) {
    ds.add(mh);
  }

  void nhap() {
    stdout.write('Nhap so mon hoc: ');
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++) {
      print('\nMON HOC ${i + 1}');
      print('1. Ly thuyet');
      print('2. Thuc hanh');
      print('3. Do an');

      stdout.write('Chon loai: ');
      int loai = int.parse(stdin.readLineSync()!);

      stdout.write('Ma mon: ');
      String ma = stdin.readLineSync()!;

      stdout.write('Ten mon: ');
      String ten = stdin.readLineSync()!;

      stdout.write('So tin chi: ');
      int tc = int.parse(stdin.readLineSync()!);

      if (loai == 1) {
        stdout.write('Diem tieu luan: ');
        double tl = double.parse(stdin.readLineSync()!);

        stdout.write('Diem cuoi ky: ');
        double ck = double.parse(stdin.readLineSync()!);

        ds.add(
          LyThuyet(
            maMon: ma,
            tenMon: ten,
            soTinChi: tc,
            diemTieuLuan: tl,
            diemCuoiKy: ck,
          ),
        );
      } else if (loai == 2) {
        stdout.write('Diem 1: ');
        double d1 = double.parse(stdin.readLineSync()!);

        stdout.write('Diem 2: ');
        double d2 = double.parse(stdin.readLineSync()!);

        stdout.write('Diem 3: ');
        double d3 = double.parse(stdin.readLineSync()!);

        ds.add(
          ThucHanh(
            maMon: ma,
            tenMon: ten,
            soTinChi: tc,
            diem1: d1,
            diem2: d2,
            diem3: d3,
          ),
        );
      } else if (loai == 3) {
        stdout.write('Diem GVHD: ');
        double gvhd = double.parse(stdin.readLineSync()!);

        stdout.write('Diem GVPB: ');
        double gvpb = double.parse(stdin.readLineSync()!);

        ds.add(
          DoAn(
            maMon: ma,
            tenMon: ten,
            soTinChi: tc,
            diemGVHD: gvhd,
            diemGVPB: gvpb,
          ),
        );
      }
    }
  }

  void xuat() {
    for (MonHoc mh in ds) {
      mh.xuat();
    }
  }

  bool kiemTraSapXepTheoTen() {
    for (int i = 0; i < ds.length - 1; i++) {
      if (ds[i]
              .tenMon
              .toLowerCase()
              .compareTo(ds[i + 1].tenMon.toLowerCase()) >
          0) {
        return false;
      }
    }

    return true;
  }

  void sapXepTangDanTinChi() {
    ds.sort((MonHoc a, MonHoc b) {
      return a.soTinChi.compareTo(b.soTinChi);
    });
  }

  int timTinChiCaoNhat() {
    int max = 0;

    for (MonHoc mh in ds) {
      if (mh.soTinChi > max) {
        max = mh.soTinChi;
      }
    }

    return max;
  }

  void xuatMonTinChiCaoNhat() {
    int max = timTinChiCaoNhat();

    for (MonHoc mh in ds) {
      if (mh.soTinChi == max) {
        mh.xuat();
      }
    }
  }

  void timMonHoc(String ten) {
    for (MonHoc mh in ds) {
      if (mh.tenMon.toLowerCase() == ten.toLowerCase()) {
        print('Tim thay mon hoc:');
        mh.xuat();
        return;
      }
    }

    print('Khong tim thay mon hoc.');
  }

  void docFile(String tenFile) {
    List<String> lines = File(tenFile).readAsLinesSync();

    for (String line in lines) {
      if (line.trim().isEmpty) {
        continue;
      }

      List<String> a = line.split('#');

      if (a[0] == 'LT') {
        ds.add(
          LyThuyet(
            maMon: a[1],
            tenMon: a[2],
            soTinChi: int.parse(a[3]),
            diemTieuLuan: double.parse(a[4]),
            diemCuoiKy: double.parse(a[5]),
          ),
        );
      } else if (a[0] == 'TH') {
        ds.add(
          ThucHanh(
            maMon: a[1],
            tenMon: a[2],
            soTinChi: int.parse(a[3]),
            diem1: double.parse(a[4]),
            diem2: double.parse(a[5]),
            diem3: double.parse(a[6]),
          ),
        );
      } else if (a[0] == 'DA') {
        ds.add(
          DoAn(
            maMon: a[1],
            tenMon: a[2],
            soTinChi: int.parse(a[3]),
            diemGVHD: double.parse(a[4]),
            diemGVPB: double.parse(a[5]),
          ),
        );
      }
    }
  }

  double tinhTinChiTrungBinh() {
    if (ds.isEmpty) {
      return 0;
    }

    int tong = 0;

    for (MonHoc mh in ds) {
      tong += mh.soTinChi;
    }

    return tong / ds.length;
  }
}