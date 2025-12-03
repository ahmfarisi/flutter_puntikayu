import 'package:flutter/material.dart';
import 'package:flutter_puntikayu/models/wisata_model.dart';

class DetailScreen extends StatefulWidget {
  final WisataModel wisataModel;

  const DetailScreen({super.key, required this.wisataModel});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // GAMBAR UTAMA DAN TOMBOL BACK (TUMPUKAN)
              Stack(
                children: [
                  // Gambar Utama
                  Image.asset(
                    widget.wisataModel.gambarUtama,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 300,
                  ),
                  // Tombol Back
                  Container(
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white70,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ],
              ),
              // NAMA DAN TOMBOL LOVE
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Nama
                    Text(
                      widget.wisataModel.nama,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Tombol Love
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite, color: Colors.red),
                    ),
                  ],
                ),
              ),
              // INFORMASI ALAMAT, JAM BUKA, DAN INSTAGRAM
              // Alamat
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.location_on, color: Colors.red),
                    SizedBox(
                      width: 80,
                      child: Text(
                        ' Alamat',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(':'),
                    const SizedBox(width: 8),
                    Expanded(child: Text(widget.wisataModel.alamat)),
                  ],
                ),
              ),
              // Jam Buka
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.access_time, color: Colors.blue),
                    SizedBox(
                      width: 80,
                      child: Text(
                        ' Jam Buka',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(':'),
                    const SizedBox(width: 8),
                    Expanded(child: Text(widget.wisataModel.jamBuka)),
                  ],
                ),
              ),
              // Instagram
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.video_label, color: Colors.green),
                    SizedBox(
                      width: 80,
                      child: Text(
                        ' Instagram',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(':'),
                    const SizedBox(width: 8),
                    Expanded(child: Text(widget.wisataModel.instagram)),
                  ],
                ),
              ),
              // DESKRIPSI
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                  bottom: 0,
                ),
                child: Divider(color: Colors.grey.shade300),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deskripsi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.wisataModel.deskripsi,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              // GAMBAR GALERI
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                  bottom: 0,
                ),
                child: Divider(color: Colors.grey.shade300),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Galeri',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.wisataModel.gambarGaleri.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(15),
                              child: Image.network(
                                widget.wisataModel.gambarGaleri[index],
                                fit: BoxFit.cover,
                                height: 100,
                                width: 150,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
