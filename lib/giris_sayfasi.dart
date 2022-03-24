import 'package:bilgi_testi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  State<GirisSayfasi> createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 200.0),
              child: Text(
                "Bilgi Testi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OyunEkrani()),
                );
              },
              child: const Text(
                "BAŞLA",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, fixedSize: const Size(220, 50)),
            ),
          ],
        ),
      ),
    );
  }
}
