import 'dart:io';

void main() {
    stdout.write('Nhập chuỗi: ');
    String chuoi = stdin.readLineSync()!;

    print('Chuỗi vừa nhập: $chuoi');

    int demNguyenAm = 0;
    String nguyenAm = 'aeiouAEIOU';

    for (int i = 0; i < chuoi.length; i++) {
      if (nguyenAm.contains(chuoi[i])) {
        demNguyenAm++;
      }
    }

    print('Số ký tự nguyên âm: $demNguyenAm');

    List<String> tu = chuoi.trim().split(RegExp(r'\s+'));

    if (chuoi.trim().isEmpty) {
      print('Số từ: 0');
    } else {
      print('Số từ: ${tu.length}');
    }

    String chuoiKhongKhoangTrang = chuoi.replaceAll(RegExp(r'\s+'), '');

    String daoNguoc = chuoiKhongKhoangTrang.split('').reversed.join('');

    if (chuoiKhongKhoangTrang.toLowerCase() ==
        daoNguoc.toLowerCase()) {
      print('Chuỗi đối xứng');
    } else {
      print('Chuỗi không đối xứng');
    }

    List<String> tuDao = List.from(tu.reversed);

    if (chuoi.trim().isEmpty) {
      print('Chuỗi sau khi đảo từ:');
    } else {
      print('Chuỗi sau khi đảo từ: ${tuDao.join(' ')}');
    }
}