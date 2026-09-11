import 'package:flutter/material.dart';

class GroupInfoScreen extends StatelessWidget {
  const GroupInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Thong tin nhom'),
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(Icons.groups, size: 100, color: Colors.blueGrey),
            ),
            const SizedBox(height: 20),

            const Text(
              'Ma nhom: N07',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            const Text(
              'Ten nhom: Flutter Masters',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            const Text(
              'So luong thanh vien: 3',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Danh sach thanh vien',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            const MemberCard(
              maSV: '2001240118',
              tenSV: 'Nguyen Chi Hai',
              vaiTro: 'Nhom truong',
            ),
            const SizedBox(height: 12),

            const MemberCard(
              maSV: '2001240105',
              tenSV: 'Ly Nhut Duy',
              vaiTro: 'Thanh vien',
            ),
            const SizedBox(height: 12),

            const MemberCard(
              maSV: '2001240135',
              tenSV: 'Nguyen Trung Hieu',
              vaiTro: 'Thanh vien',
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

class MemberCard extends StatelessWidget {
  final String maSV;
  final String tenSV;
  final String vaiTro;

  const MemberCard({
    super.key,
    required this.maSV,
    required this.tenSV,
    required this.vaiTro,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 24,
            backgroundColor: Color(0xFFEDEDED),
            child: Icon(Icons.person, color: Colors.grey),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tenSV,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'MSSV: $maSV',
                  style: const TextStyle(color: Colors.black87, fontSize: 13),
                ),
                Text(
                  'Vai tro: $vaiTro',
                  style: TextStyle(
                    color: vaiTro == 'Nhom truong'
                        ? Colors.red
                        : Colors.green,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
