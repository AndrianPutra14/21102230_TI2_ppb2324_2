import 'package:flutter/material.dart';

class MedicineDetailScreen extends StatelessWidget {
  final Map<String, String> medicine;

  MedicineDetailScreen({required this.medicine});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3572EF),
      appBar: AppBar(
        backgroundColor: Color(0xFF3572EF),
        title: Text('Detail Obat'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Tentang Obat',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF3ABEF9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(medicine['image']!),
                      ),
                      SizedBox(height: 10),
                      Text(
                        medicine['name']!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      // Teks informasi obat bisa diambil dari sumber data atau hard-coded di sini
                      Text(
                        _getMedicineDescription(medicine['name']!),
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF050C9C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                        ),
                        child: Text(
                          'Kembali',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xFFA7E6FF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk mendapatkan deskripsi obat berdasarkan nama obat
  String _getMedicineDescription(String medicineName) {
    switch (medicineName) {
      case 'SANMOL':
        return 'Sanmol adalah obat yang digunakan untuk meredakan demam serta nyeri. Rasa sakit yang bisa diatasi dengan obat ini meliputi sakit kepala, sakit gigi, atau nyeri sesudah operasi. Sanmol tersedia dalam berbagai bentuk seperti tablet, sirop, dan tetes.';
      case 'Throches':
        return 'Throches adalah obat yang digunakan untuk meredakan sakit tenggorokan dan batuk. Obat ini tersedia dalam bentuk tablet hisap atau lozenge.';
      case 'Bimacyl':
        return 'Bimacyl adalah obat yang digunakan untuk meredakan sakit perut, mual, muntah, dan kram perut. Obat ini tersedia dalam bentuk tablet atau sirup.';
      case 'Bodrex':
        return 'Bodrex adalah obat yang digunakan untuk meredakan sakit kepala, migrain, demam, serta nyeri ringan hingga sedang seperti sakit gigi dan nyeri otot. Obat ini tersedia dalam bentuk tablet.';
      case 'Demeclocycline':
        return 'Demeclocycline adalah antibiotik yang digunakan untuk mengobati infeksi bakteri pada berbagai bagian tubuh seperti saluran pernapasan, kulit, dan infeksi saluran kemih. Obat ini tersedia dalam bentuk tablet.';
      case 'BYE BYE FEVER':
        return 'BYE BYE FEVER adalah obat yang digunakan untuk meredakan demam dan nyeri ringan seperti sakit kepala dan sakit gigi. Obat ini tersedia dalam bentuk sirup.';
      default:
        return '';
    }
  }
}
