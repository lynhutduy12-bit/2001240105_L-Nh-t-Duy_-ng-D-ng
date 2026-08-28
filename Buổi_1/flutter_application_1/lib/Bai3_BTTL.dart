import 'dart:io';

bool laSoNguyenTo(int n) {
  if (n < 2) {
    return false;
  }

  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  stdout.write('Nhập số phần tử: ');
  int n = int.parse(stdin.readLineSync()!);

  List<int> ds = [];

  for (int i = 0; i < n; i++) {
    stdout.write('Nhập phần tử thứ ${i + 1}: ');
    ds.add(int.parse(stdin.readLineSync()!));
  }

  print('Danh sách: $ds');

  int tong = 0;

  for (int x in ds) {
    tong += x;
  }

  print('Tổng các phần tử: $tong');

  print('Các số nguyên tố trong danh sách:');

  for (int x in ds) {
    if (laSoNguyenTo(x)) {
      print(x);
    }
  }

  stdout.write('Nhập giá trị cần tìm: ');
  int x = int.parse(stdin.readLineSync()!);

  if (ds.contains(x)) {
    print('Giá trị $x có trong danh sách ở vị trí:');

    for (int i = 0; i < ds.length; i++) {
      if (ds[i] == x) {
        print(i);
      }
    }
  } else {
    ds.insert(0, x);
    print('Không tìm thấy, đã thêm $x vào đầu danh sách');
    print('Danh sách mới: $ds');
  }
}