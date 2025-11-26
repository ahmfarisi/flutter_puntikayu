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
                      color: Colors.white70
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      }, 
                      icon: const Icon(Icons.arrow_back)
                    )
                  )
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
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    // Tombol Love
                    IconButton(
                      onPressed: () {}, 
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    )
                  ],
                ),
              ),
              // INFORMASI ALAMAT, JAM BUKA, DAN INSTAGRAM
              // Alamat
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    Text(
                      ' Alamat',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 24),
                    Text(':'),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(widget.wisataModel.alamat)
                    )
                  ],
                ),
              )
              // Jam Buka
          
              // Instagram
          
              // DESKRIPSI
          
              // GAMBAR GALERI
            ],
          ),
        ),
      )
    );
  }
}