import 'dart:io';
import 'dart:math';

bool ktrsnt(int a){
  if(a < 2){
    return false;
  }
  for(int i =  2; i <= sqrt(a); i++){
    if(a % i ==0){
      return false;
    }
  }
  return true;
}

void main() 
{
  List<int> a = [];

  stdout.write("Nhap so luong so can nhap vao danh sach: ");
  int n = int.parse(stdin.readLineSync()!);

  for(int i =0; i < n; i++)
  {
    stdout.write("Nhap phan tu thu a[$i]: ");
    a.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write("Danh sach vua nhap: ");
  for(int i =0; i < n; i++){
    stdout.write(a[i]);
    stdout.write(" ");
  }
  print("");

  stdout.write("Danh sach so nguyen to la: ");
  for(int i =0; i < n; i++){
    if(ktrsnt(a[i]) == true){
      stdout.write(a[i]);
      stdout.write(" ");
    }
  }
  print("");

  stdout.write("Nhap gia tri ca tim: ");
  int x = int.parse(stdin.readLineSync()!);
  int dem = 0;
  for(int i =0; i < n; i++){
    if(a[i] == x){
      dem++;
    }
  }
  if(dem == 0){
    print("Gia tri $x khong co trong danh sach va da them gia tri $x vao dau danh sach");
    a.insert(0,x);
  }
  else{
    print("Gia tri $x co trong danh sach va co $dem lan xuat hien");
  }
}