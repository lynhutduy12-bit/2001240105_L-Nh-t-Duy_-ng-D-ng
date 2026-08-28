import 'dart:io';
import 'HoaDon.dart';
import 'khachHangCaNhan.dart';
import 'DaiLyCap1.dart';
import 'KhachHangCongTy.dart';

class DanhSachHoaDon {
  List<HoaDon> ds = [];

  void them(HoaDon hd) {
    ds.add(hd);
  }

  void nhap() {
    stdout.write('Nhap so hoa don: ');
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++) {
      print('\nHOA DON ${i + 1}');
      print('1. Khach hang ca nhan');
      print('2. Dai ly cap 1');
      print('3. Khach hang cong ty');

      stdout.write('Chon loai: ');
      int loai = int.parse(stdin.readLineSync()!);

      String ma;

      while (true) {
        stdout.write('Ma khach hang: ');
        ma = stdin.readLineSync()!;

        if (RegExp(r'^KH\d{4}$').hasMatch(ma)) {
          break;
        }

        print('Ma khach hang sai dinh dang!');
      }

      String ten;

      while (true) {
        stdout.write('Ten khach hang: ');
        ten = stdin.readLineSync()!;

        if (ten.trim().isNotEmpty) {
          break;
        }

        print('Ten khach hang khong duoc de trong!');
      }

      int soLuong;

      while (true) {
        stdout.write('So luong: ');
        soLuong = int.parse(stdin.readLineSync()!);

        if (soLuong > 0) {
          break;
        }

        print('So luong phai > 0!');
      }

      double giaBan;

      while (true) {
        stdout.write('Gia ban: ');
        giaBan = double.parse(stdin.readLineSync()!);

        if (giaBan > 0) {
          break;
        }

        print('Gia ban phai > 0!');
      }

      if (loai == 1) {
        stdout.write('Khoang cach giao hang: ');
        double kc = double.parse(stdin.readLineSync()!);

        ds.add(
          KhachHangCaNhan(
            maKhachHang: ma,
            tenKhachHang: ten,
            soLuong: soLuong,
            giaBan: giaBan,
            khoangCach: kc,
          ),
        );
      } else if (loai == 2) {
        stdout.write('Thoi gian hop tac: ');
        int nam = int.parse(stdin.readLineSync()!);

        ds.add(
          DaiLyCap1(
            maKhachHang: ma,
            tenKhachHang: ten,
            soLuong: soLuong,
            giaBan: giaBan,
            thoiGianHopTac: nam,
          ),
        );
      } else if (loai == 3) {
        stdout.write('So nhan vien: ');
        int nv = int.parse(stdin.readLineSync()!);

        ds.add(
          KhachHangCongTy(
            maKhachHang: ma,
            tenKhachHang: ten,
            soLuong: soLuong,
            giaBan: giaBan,
            soNhanVien: nv,
          ),
        );
      }
    }
  }

  void xuat() {
    for (HoaDon hd in ds) {
      hd.xuat();
    }
  }

  double tongThanhTien() {
    double tong = 0;

    for (HoaDon hd in ds) {
      tong += hd.tinhThanhTien();
    }

    return tong;
  }

  double tongTroGia() {
    double tong = 0;

    for (HoaDon hd in ds) {
      tong += hd.tinhTroGia();
    }

    return tong;
  }

  void khachHangMuaNhieuNhat() {
    if (ds.isEmpty) {
      print('Danh sach rong');
      return;
    }

    int max = ds[0].soLuong;

    for (HoaDon hd in ds) {
      if (hd.soLuong > max) {
        max = hd.soLuong;
      }
    }

    print('Khach hang mua nhieu nhat:');

    for (HoaDon hd in ds) {
      if (hd.soLuong == max) {
        hd.xuat();
      }
    }
  }

  double tongChietKhauCongTy() {
    double tong = 0;

    for (HoaDon hd in ds) {
      if (hd is KhachHangCongTy) {
        tong += hd.tinhChietKhau();
      }
    }

    return tong;
  }

  void sapXep() {
    ds.sort((HoaDon a, HoaDon b) {
      int kq = a.soLuong.compareTo(b.soLuong);

      if (kq != 0) {
        return kq;
      }

      return b.tinhThanhTien().compareTo(a.tinhThanhTien());
    });
  }

  void timTheoMa(String ma) {
    bool timThay = false;

    for (HoaDon hd in ds) {
      if (hd.maKhachHang.toLowerCase() == ma.toLowerCase()) {
        hd.xuat();
        timThay = true;
      }
    }

    if (!timThay) {
      print('Khach hang la');
    }
  }
}