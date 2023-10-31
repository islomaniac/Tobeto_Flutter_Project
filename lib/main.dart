import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm),
              color: Colors.black,
              iconSize: 30.0,
            )
          ],
          title: const Center(
              child: Text(
            "Tobeto Workshop",
            style: TextStyle(color: Colors.black, fontSize: 30),
          )),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/321.jpeg',
                    width: 250,
                    height: 250,
                  ),
                ),
                const Text(
                  "Mustafa ÖZDEMİR",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Tobeto - Mobil Geliştiri Flutter - 1B",
                  style: TextStyle(fontSize: 20),
                ),
                const Text("31.10.2023", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
    ),
  );
}


//resminiz flutter uygulamasına resim eklenmesi
// isim soyisim
// tobeto - grup -1b
// günün tarihi