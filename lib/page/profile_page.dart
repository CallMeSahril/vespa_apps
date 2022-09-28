import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" "),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            DataPribadi(),
          ],
        ),
      )),
    );
  }
}

class DataPribadi extends StatelessWidget {
  const DataPribadi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 7,
        )
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/assets/sahril.jpg")),
              ),
            ),
          ),
          const Text(
            "Data Saya",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Nama = Sahril",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const Text(
            "Tinggal = Jakarta, Indonesia",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const Text(
            "Sekolah = Universitas IndraprastaPGRI",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const Text(
            "Prodi = Teknik Informatika",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
