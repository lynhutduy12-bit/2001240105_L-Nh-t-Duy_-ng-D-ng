import 'dart:io';

void main()
{
  stdout.write("nhap chuoi: ");
  String s = stdin.readLineSync()!;

  int demna = 0;
  for(int i =0; i < s.length; i++)
  {
     if(s[i] == 'a' || s[i] == 'e' || s[i] == 'i' ||
       s[i] == 'o' || s[i] == 'u')
       {
        demna++;
       }
  }
  print("So nguyen am trong chuoi la: $demna");

  int dem = 0;
  for(int i =0; i < s.length; i++)
  {
    if(s[i] != " " && (i == 0 || s[i - 1] == " "))
    {
      dem++;
    }
  }
  print("So tu la: $dem");

  int ktr = 0;
  for(int i = 0; i < s.length; i++)
  {
    if(s[i] != s[s.length - i - 1])
    {
      ktr++;
    }
  }

  if(ktr == 0)
  {
    print("Chuoi doi xung");
  }
  else
  {
    print("Chuoi khong doi xung");
  }

  String b = s;
  s = b.split('').reversed.join();
  print("Chuoi sau khi dao: $s");
}