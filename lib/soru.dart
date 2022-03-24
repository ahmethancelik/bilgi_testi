class Soru {
  String soruTexti;
  bool cevap;

  Soru({required this.soruTexti, required this.cevap});
}
class Sorular{
  List<Soru> sorular =[
    Soru(soruTexti: "Türkiye'nin başkenti Ankara'dır.", cevap: true),
    Soru(soruTexti: "Lionel Messi, en çok ballon d'or ödülüne sahip futbolcudur.", cevap: true),
    Soru(soruTexti: "Flutter sıkıcıdır.", cevap: false),
    Soru(soruTexti: "Cumhuriyet 1920 yılında ilan edilmiştir", cevap: false),
    Soru(soruTexti: "Avrupanın yüz ölçümü en küçük ülkesi Vatikan'dır", cevap: true),
    Soru(soruTexti: "Artemis, Yunan mitolojisinde bilgelik ve sanat tanrıçasıdır.", cevap: false),
    Soru(soruTexti: "El Salvador, Güney Amerika'da bulunan bir ülkedir.", cevap: false),
    Soru(soruTexti: "Juventus, Şampiyonlar Ligini 2 kez kazanmıştır.", cevap: false),
    Soru(soruTexti: "Mona Lisa, 16. yüzyıl eseridir.", cevap: true),
    Soru(soruTexti: "10 Tane soru bu uygulama için yeterlidir", cevap: true),
    Soru(soruTexti: "", cevap: true)

  ];
}
