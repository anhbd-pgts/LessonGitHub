import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Ảnh đại diện
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                'https://via.placeholder.com/150',
              ), // Thay link bằng ảnh của bạn
            ),
            const SizedBox(height: 20),
            // Họ tên
            const Text(
              'Nguyễn Văn A',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Email
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.blueAccent),
                SizedBox(width: 10),
                Text(
                  'nguyenvana@gmail.com',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Số điện thoại
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 10),
                Text(
                  '+84 123 456 789',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 20), // Thêm khoảng cách giữa thông tin và mô tả
            // Mô tả
            const Text(
              'Chào mừng bạn đến với trang cá nhân của tôi. Tôi là một lập trình viên Flutter, đam mê xây dựng các ứng dụng di động hiệu quả và dễ sử dụng.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center, // Căn giữa văn bản
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
              },
              icon: const Icon(Icons.edit),
              label: const Text('Chỉnh Sửa Thông Tin'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
