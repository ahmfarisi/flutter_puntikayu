import 'package:flutter/material.dart';
import 'package:flutter_puntikayu/data/wisata_data.dart';
import 'package:flutter_puntikayu/models/wisata_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0
          ), 
          itemCount: wisataList.length,
          itemBuilder: (context, index) {
            WisataModel wisataModel = wisataList[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 1,
              child: Column(
                children: [
                  //Gambar Utama Tempat Wisata
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16), 
                        topRight: Radius.circular(16)
                      ),
                      child: Image.asset(
                        wisataModel.gambarUtama,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //Nama Tempat Wisata
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      wisataModel.nama,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}