import 'package:flutter/material.dart';
import 'package:flutter_puntikayu/data/wisata_data.dart';
import 'package:flutter_puntikayu/models/wisata_model.dart';
import 'package:flutter_puntikayu/screens/detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _txtSearch = TextEditingController();
  List<WisataModel> _filteredWisataList = [];

  @override
  void initState() {
    _txtSearch.addListener(_filterWisataProcess);
  }

  @override
  void dispose() {
    _txtSearch.removeListener(_filterWisataProcess);
    _txtSearch.dispose();
    super.dispose();
  }

  void _filterWisataProcess() {
    String query = _txtSearch.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredWisataList = [];
      } else {
        _filteredWisataList = wisataList.where((wisataModel) {
          return wisataModel.nama.toLowerCase().contains(query);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: Column(
        children: [
          // SEARCH BOX
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.deepOrange.shade100,
              ),
              child: TextField(
                controller: _txtSearch,
                autofocus: false,
                decoration: const InputDecoration(
                  hintText: 'Cari Tempat Wisata ...',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),
          ),

          // HASIL PENCARIAN
          Expanded(
            child: ListView.builder(
              itemCount: _filteredWisataList.length,
              itemBuilder: (context, index) {
                WisataModel wisataModel = _filteredWisataList[index];
                return ListTile(
                  title: Text(wisataModel.nama),
                  subtitle: Text(wisataModel.instagram),
                  leading: Image.asset(
                    wisataModel.gambarUtama,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailScreen(wisataModel: wisataModel);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
