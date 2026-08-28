import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();

  stdout.write('Nhập số phần tử: ');
  int n = int.parse(stdin.readLineSync()!);

  List<int> ds = List.generate(n, (_) => random.nextInt(96) + 5);

  print('Danh sách: $ds');

  int tongLe = 0;
  int demLe = 0;

  for (int x in ds) {
    if (x % 2 != 0) {
      tongLe += x;
      demLe++;
    }
  }

  if (demLe == 0) {
    print('Danh sách không có số lẻ.');
  } else {
    double tbc = tongLe / demLe;
    print('Trung bình cộng các số lẻ: $tbc');
  }

  bool doiXung = true;

  for (int i = 0; i < ds.length ~/ 2; i++) {
    if (ds[i] != ds[ds.length - 1 - i]) {
      doiXung = false;
      break;
    }
  }

  if (doiXung) {
    print('Danh sách đối xứng');
  } else {
    print('Danh sách không đối xứng');
  }

  bool tangDan = true;

  for (int i = 0; i < ds.length - 1; i++) {
    if (ds[i] > ds[i + 1]) {
      tangDan = false;
      break;
    }
  }

  if (tangDan) {
    print('Danh sách được sắp xếp tăng dần');
  } else {
    print('Danh sách không được sắp xếp tăng dần');
  }

  int max = ds[0];

  for (int x in ds) {
    if (x > max) {
      max = x;
    }
  }

  print('Phần tử lớn nhất: $max');

  int? maxChan;

  for (int x in ds) {
    if (x % 2 == 0) {
      if (maxChan == null || x > maxChan) {
        maxChan = x;
      }
    }
  }

  if (maxChan == null) {
    print('Danh sách không có số chẵn.');
  } else {
    print('Số chẵn lớn nhất: $maxChan');
  }

  stdout.write('Nhập giá trị cần tìm: ');
  int giaTri = int.parse(stdin.readLineSync()!);

  if (!ds.contains(giaTri)) {
    print('Không tìm thấy.');
  } else {
    ds.removeWhere((x) => x == giaTri);
    print('Đã xóa các phần tử có giá trị $giaTri');
    print('Danh sách sau khi xóa: $ds');
  }
}