import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hallo, Eva',
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/profile.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Tempat favorit',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 16), // Spasi awal
                FavoritePlaceCard(image: 'assets/Bukchon_Hanok_Village.jpg'), // Ganti dengan path gambar Anda
                FavoritePlaceCard(image: 'assets/Gyeongbokgung_Palace.jpg'), // Ganti dengan path gambar Anda
                FavoritePlaceCard(image: 'assets/Jeju_Island.jpg'), // Ganti dengan path gambar Anda
                FavoritePlaceCard(image: 'assets/Namsan_Seoul_Tower.jpg'), // Ganti dengan path gambar Anda
                SizedBox(width: 16), // Spasi akhir
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FavoritePlaceCard extends StatelessWidget {
  final String image;

  FavoritePlaceCard({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 16), // Menambahkan margin kanan
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
