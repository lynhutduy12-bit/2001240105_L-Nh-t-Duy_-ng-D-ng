import 'dart:io';
import 'dart:math';

bool ktrdoixung(List<int> a)
{
  for(int i = 0; i < a.length; i++)
  {
    if(a[i] != a[a.length - i - 1])
    {
      return false;
    }
  }
  return true;
}

bool ktrtngdan(List<int> a) {
  int next = 0;
  for(int i =0; i < a.length - 1; i++)
  {
    next = a[i+1];
    if(a[i] > next)
    {
      return false;
    }
  }
  return true;
}

int timmax(List<int> a)
{
  int max = 0;
  for(int i = 0; i < a.length; i++)
  {
    if(a[i] > max)
    {
      max = a[i];
    }
  }
  return max;
}

int timchanmax(List<int> a)
{
    int dem = 0;
    int max = 0;
      for(int i =0; i < a.length; i++){
        if(a[i] % 2 == 0)
        {
          max = a[i];
          dem++;
          break;
        }
      }
      for(int i =0; i < a.length; i++){
        if(a[i] % 2 == 0 && a[i] > max)
        {
          max = a[i];
          dem++;
        }
      }
      if(dem == 0)
      {
        return 0;
      }
      else
      {
        return max;
      }
}

void timxoa(List<int> a)
{
  stdout.write("Nhap so can tim va xoa: ");
  int x = int.parse(stdin.readLineSync()!);

  int dem = 0;
  for(int i = 0; i < a.length; i++)
  {
    if(a[i] == x)
    {
      a.removeAt(i);
      dem ++;
      print("Da xoa gia tri $x tai vi tri a[$i]");
    }
  }
  if(dem == 0)
  {
    print("Khong co gia tri $x");
  }
  else{
    stdout.write("Cac phan tu trong danh sach sau khi xoa la: ");
    for(int i =0; i < a.length; i++)
    {
      stdout.write(a[i]);
      stdout.write(" ");
    }
    print(" ");
  }
}

void main()
{
  List<int> a = [];
  int n;

  stdout.write("Nhap so luong phan tu: ");
  n = int.parse(stdin.readLineSync()!);

  for(int i = 0; i < n; i++)
  {
    a.add(Random().nextInt(96) + 5);
  }
  
  int tongle = 0;
  double tbc = 0;
  int dem = 0;
  for(int i = 0; i< n; i++)
  {
    if(a[i] % 2 != 0)
    {
      tongle += a[i];
      dem++;
    }
  }

  stdout.write("Cac phan tu trong danh sach la: ");
  for(int i =0; i < n; i++)
  {
    stdout.write(a[i]);
    stdout.write(" ");
  }
  print(" ");

  tbc = tongle / dem;

  if(dem == 0)
  {
    print("Danh sach khong co so le");
  }
  else
  {
    print("Trung binh cong cac so le trong danh sach la: $tbc");
  }

  if(ktrdoixung(a) == true)
  {
    print("Mang doi xung");
  }
  else
  {
    print("Mang khong doi xung");
  }

  if(ktrtngdan(a) == true)
  {
    print("Mang tang dan");
  }
  else{
    print("Mang khong tang dan");
  }
  
  int max = timmax(a);
  print("So lon nhat trong danh sach la: $max");

  if(timchanmax(a) == 0)
  {
    print("Danh sach khong co so chan");
  }
  else
  {
    int chanmax = timchanmax(a);
    print("So chan lon nhat la: $chanmax");
  }
   
   timxoa(a);
}