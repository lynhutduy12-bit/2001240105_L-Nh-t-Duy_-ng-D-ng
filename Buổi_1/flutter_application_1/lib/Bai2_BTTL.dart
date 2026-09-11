import 'dart:io';

void main()
{
  stdout.write("Nhap 1 so nguyen duong: ");
  int a = int.parse(stdin.readLineSync()!);

  String n = a.toString();
  int sl =0;
  for(int i = 0; i < n.length; i++)
  {
    sl++;
  }
  print("So luong chu so cua $a là: $sl");

  int b = a;
  int tong = 0;
  while(b > 0)
  {
    int c = b % 10;
    tong += c;
    b = b ~/ 10;
  }
  print("Tong cac so la: $tong");

  int t = a;
  int l =0;
  while(t > 0)
  {
    int c = t % 10;
    if (c % 2 != 0){
      l++;
    }
    t = t ~/ 10;
  }

  if(l > 0)
  {
    print("So luong chu so le la: $l");
  }
  else
  {
    print("Khong co chu so le");
  }
}