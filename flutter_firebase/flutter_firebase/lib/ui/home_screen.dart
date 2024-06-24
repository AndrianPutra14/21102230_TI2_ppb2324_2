import 'package:flutter/material.dart';
import 'package:flutter_firebase/utils/routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Text('Apotek Juheri'), // Judul AppBar
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Tambahkan kode untuk menangani aksi notifikasi di sini
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout), // Ikon logout
            onPressed: () {
              // Tambahkan kode untuk log out di sini
              // Misalnya, kembali ke halaman login atau hapus token otentikasi
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/login',
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Selamat Datang, Juheri',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Cari...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                print('Tapped Ke Daftar Obat');
                Navigator.pushNamed(context, rObat);
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/rectangle_21.png',
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Ke Daftar Obat',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                print('Tapped Ke Daftar Obat');
                Navigator.pushNamed(context, rObat);
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/rectangle_44.png',
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Berita ',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/rectangle_39.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Pegawai Apotek',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/rectangle_49.png'),
                    ),
                    Text('Apt.Yono'),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/rectangle_49.png'),
                    ),
                    Text('Apt.Arian'),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/rectangle_49.png'),
                    ),
                    Text('Apt.Putra'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Warna latar belakang biru
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white), // Ikon berwarna putih
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.message, color: Colors.white), // Ikon berwarna putih
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.person, color: Colors.white), // Ikon berwarna putih
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
