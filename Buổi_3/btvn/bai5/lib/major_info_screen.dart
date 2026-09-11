import 'package:flutter/material.dart';

class MajorInfoScreen extends StatelessWidget {
  const MajorInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Gioi thieu nganh hoc'),
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(Icons.school, size: 90, color: Colors.blueGrey),
            ),
            const SizedBox(height: 12),

            const Center(
              child: Text(
                'Khoa Cong nghe Thong tin',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Center(
              child: Text(
                'Truong Dai hoc Cong Thuong Thanh pho Ho Chi Minh',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),

            const MajorCard(
              tenNganh: 'Nganh Cong nghe Thong tin (CNTT)',
              gioiThieu:
                  'Dao tao kien thuc nen tang va chuyen sau ve lap trinh, '
                  'phat trien phan mem, co so du lieu, mang may tinh va tri '
                  'tue nhan tao, giup sinh vien co kha nang xay dung cac he '
                  'thong phan mem, ung dung web va di dong.',
              coHoiNgheNghiep:
                  'Lap trinh vien, ky su phan mem, quan tri co so du lieu, '
                  'chuyen vien phan tich thiet ke he thong, ky su AI/Data.',
              color: Colors.blue,
            ),
            const SizedBox(height: 16),

            const MajorCard(
              tenNganh: 'Nganh An toan Thong tin (ATTT)',
              gioiThieu:
                  'Dao tao kien thuc va ky nang ve bao mat he thong, bao '
                  've du lieu, phat hien va ung pho su co an ninh mang, '
                  'kiem thu xam nhap va xay dung cac giai phap bao mat cho '
                  'to chuc, doanh nghiep.',
              coHoiNgheNghiep:
                  'Chuyen vien bao mat, ky su an ninh mang, chuyen vien '
                  'kiem thu xam nhap (Pentester), quan tri he thong bao mat.',
              color: Colors.red,
            ),
            const SizedBox(height: 30),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEDEDED),
                  foregroundColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 12,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Tro ve'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MajorCard extends StatelessWidget {
  final String tenNganh;
  final String gioiThieu;
  final String coHoiNgheNghiep;
  final Color color;

  const MajorCard({
    super.key,
    required this.tenNganh,
    required this.gioiThieu,
    required this.coHoiNgheNghiep,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(10),
        border: Border(left: BorderSide(color: color, width: 4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tenNganh,
            style: TextStyle(
              color: color,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Gioi thieu:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          Text(gioiThieu, style: const TextStyle(fontSize: 13, height: 1.4)),
          const SizedBox(height: 8),
          const Text(
            'Co hoi nghe nghiep:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          Text(
            coHoiNgheNghiep,
            style: const TextStyle(fontSize: 13, height: 1.4),
          ),
        ],
      ),
    );
  }
}
