class WisataModel {
  final String nama;
  final String alamat;
  final String jamBuka;
  final String instagram;
  final String deskripsi;
  final String gambarUtama;
  final List<String> gambarGaleri;
  bool isFavorite;

  WisataModel({
    required this.nama, 
    required this.alamat, 
    required this.jamBuka, 
    required this.instagram, 
    required this.deskripsi, 
    required this.gambarUtama, 
    required this.gambarGaleri,
    this.isFavorite = false,
  });
  
  
}