import 'package:flutter/material.dart';
import 'package:flutter_firebase/ui/deskripsi_obat.dart';
import 'package:flutter_firebase/ui/medicine_detail_screen.dart'; // Sesuaikan dengan path yang sesuai

class MedicineListScreen extends StatelessWidget {
  final List<Map<String, String>> medicines = [
    {'name': 'SANMOL', 'image': 'assets/images/ellipse_8.png'},
    {'name': 'Throches', 'image': 'assets/images/ellipse_7.png'},
    {'name': 'Bimacyl', 'image': 'assets/images/ellipse_6.png'},
    {'name': 'Bodrex', 'image': 'assets/images/ellipse_5.png'},
    {'name': 'Demeclocycline', 'image': 'assets/images/ellipse_4.png'},
    {'name': 'BYE BYE FEVER', 'image': 'assets/images/ellipse_3.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Daftar Obat'),
      ),
      body: ListView.builder(
        itemCount: medicines.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MedicineDetailScreen(
                    medicine: medicines[index],
                  ),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(10.0),
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(medicines[index]['image']!),
                ),
                title: Text(
                  medicines[index]['name']!,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
