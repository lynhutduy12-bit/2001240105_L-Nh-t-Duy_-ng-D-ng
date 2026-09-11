import 'dart:io';

void main(){
  int a;
  double b;

  do
  {
    stdout.write("Nhap so luong que kem: ");
    a = int.parse(stdin.readLineSync()!);
    if(a <= 0){
      print("Nhap lai so luong kem > 0");
    }
  } while (a <= 0);

  stdout.write("Nhap gia tien que kem: ");
  b = double.parse(stdin.readLineSync()!);

  double tongtien = a * b;

  if(a > 10)
  {
    tongtien = tongtien - (tongtien * 0.1);
  }
  if(a >= 5 && a <= 10)
  {
    tongtien = tongtien - (tongtien * 0.05);
  }

  print("Tong tien phai tra: $tongtien");
}