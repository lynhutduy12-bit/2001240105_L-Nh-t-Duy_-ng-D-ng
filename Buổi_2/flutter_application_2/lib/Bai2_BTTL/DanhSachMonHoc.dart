import 'dart:io';

import 'MonHoc.dart';
import 'LyThuyet.dart';
import 'ThucHanh.dart';
import 'DoAn.dart';

class Danhsachmonhoc 
{
  List<MonHoc> danhsach = [];

  void nhap(){
    int choice;
    stdout.write("Nhap so luong mon can nhap: ");
    int n = int.parse(stdin.readLineSync()!);

    do{
      print("1. Nhap mon ly thuyet.");
      print("2. Nhap mon thuc hanh.");
      print("3. Nhap do an.");
      print("0. thoat");

      stdout.write("Nhap lua chon: ");
      choice = int.parse(stdin.readLineSync()!);

      switch(choice)
      {
        case 1: 
      }

    }while(choice != 0);
  }
}