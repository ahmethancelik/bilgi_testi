import 'package:flutter/material.dart';

class SonucEkrani extends StatelessWidget {
  final int skor;

  const SonucEkrani({required this.skor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 200.0, bottom: 150.0),
                child: Text(
                  "TEBRİKLER!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.check_box,
                    color: Colors.green,
                    size: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Text(
                      "$skor/9",
                      style: const TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  const Icon(
                    Icons.disabled_by_default,
                    color: Colors.red,
                    size: 50,
                  ),
                  Text(
                    "${9-skor}/9",
                    style: const TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
