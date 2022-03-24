import 'package:bilgi_testi/sonuc_ekrani.dart';
import 'package:bilgi_testi/soru.dart';
import 'package:flutter/material.dart';

class OyunEkrani extends StatefulWidget {
  const OyunEkrani({Key? key}) : super(key: key);

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  int soruIndex = 0;
  var soruDeposu = Sorular();
  int dogruSayisi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 250.0, left: 15.0, right: 10.0),
            child: Text(
              soruDeposu.sorular[soruIndex].soruTexti,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          )),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green, fixedSize: const Size(20, 60)),
                      onPressed: () {
                        setState(() {
                          if (soruDeposu.sorular[soruIndex].cevap == true) {
                            soruIndex++;
                            dogruSayisi++;
                          } else {
                            soruIndex++;
                          }
                        });
                        if (soruIndex == soruDeposu.sorular.length - 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SonucEkrani(
                                      skor: dogruSayisi,
                                    )),
                          );
                        }
                      },
                      child: const Icon(Icons.thumb_up))),
              Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        fixedSize: const Size(20, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          if (soruDeposu.sorular[soruIndex].cevap == true) {
                            soruIndex++;
                          } else {
                            soruIndex++;
                            dogruSayisi++;
                          }
                          if (soruIndex == soruDeposu.sorular.length - 1) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SonucEkrani(
                                        skor: dogruSayisi,
                                      )),
                            );
                          }
                        });
                      },
                      child: const Icon(Icons.thumb_down))),
            ],
          )
        ],
      ),
    );
  }
}
