import 'dart:io';

import 'Phong.dart';
import 'PhongA.dart';
import 'PhongB.dart';

class Danhsachphong {
  List<Phong> phong = [];

  void docfile() {
    List<String> lines =
        File("lib/Bai1_BTTL/phongthue.txt").readAsLinesSync();

    for (var line in lines) {
      List<String> data = line.split("#");

      if (data[0].startsWith("A")) {
        PhongA a = PhongA.full(
          data[0],
          int.parse(data[1]),
          int.parse(data[2]),
          int.parse(data[3]),
          int.parse(data[4]),
        );

        phong.add(a);
      }

      if (data[0].startsWith("B")) {
        PhongB b = PhongB.full(
          data[0],
          int.parse(data[1]),
          int.parse(data[2]),
          int.parse(data[3]),
          int.parse(data[4]),
          int.parse(data[5]),
        );

        phong.add(b);
      }
    }
  }

  void hienthi() {
    print("So phong da them: ${phong.length}");
    for (var i in phong) {
      i.hienThi();
    }
  }

  void xuatlonhon2() {
    print("Phong co so nguoi thue lon hon 2: ");
    for (var i in phong) {
      if(i.SoNguoi > 2){
        i.hienThi();
      }
    }
  }

  double tinhtongtienthu() {
    double tong = 0;
    for (var i in phong) {
      tong += i.Tienphong();
    }
    return tong;
  }

  void sapxepgiamdan() {
    phong.sort((a, b) {
      return b.Tienphong().compareTo(a.Tienphong());
    });
  }

  void inloaia()
  {
    for(var i in phong)
    {
      if(i.Ma.startsWith("A"))
      {
        i.hienThi();
      }
    }
  }

  void sapxeptangdan()
  {
    phong.sort((a, b) {
      return a.Tienphong().compareTo(b.Tienphong());
      });
  }
}