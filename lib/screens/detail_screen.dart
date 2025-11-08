import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // GAMBAR UTAMA
            Image.asset('images/twapuntikayu.jpeg'),
            // JUDUL
            Container(
              margin: EdgeInsets.all(8),
              width: double.infinity,
              child: Text(
                'PUNTI KAYU PALEMBANG',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            // ICON DAN TEXT
            Container(
              margin: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Icon Pertama
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8),
                      Text('Buka Setiap Hari'),
                    ],
                  ),
                  // Icon Kedua
                  Column(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(height: 8),
                      Text('09.00 - 16.00'),
                    ],
                  ),
                  // Icon Ketiga
                  Column(
                    children: [
                      Icon(Icons.payment),
                      SizedBox(height: 8),
                      Text('Rp 15.000'),
                    ],
                  ),
                ],
              ),
            ),
            // DESKRIPSI
            Container(
              margin: EdgeInsets.all(16),
              width: double.infinity,
              child: Text(
                "Punti Kayu adalah Taman Wisata Alam (TWA) di Palembang yang berfungsi sebagai paru-paru kota dan objek wisata. Kawasan seluas 50 hektar ini didominasi pohon pinus dan menjadi hutan kota terbesar di Indonesia, menawarkan berbagai fasilitas rekreasi seperti danau, flying fox, dan taman bermain. TWA Punti Kayu menjadi tujuan favorit untuk menikmati alam di tengah kota serta mendukung pelestarian lingkungan.",
                textAlign: TextAlign.justify,
              ),
            ),
            // GAMBAR SCROLLABLE
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://indonesiakaya.com/wp-content/uploads/2020/10/1._Hutan_Wisata_Punti_Kayu_memiliki_luas_lahan_sekitar_399_ha_dan_berlokasi_di_tengah-tengah_Kota_Palembang_.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://awsimages.detik.net.id/community/media/visual/2024/06/22/destinasi-wisata-punti-kayu-di-palembang_169.jpeg?w=1200',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://cdn.antaranews.com/cache/1200x800/2023/04/18/F5ECF05D-B86E-4FC5-A829-E55F8B558E12.jpeg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
