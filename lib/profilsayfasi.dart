import 'package:flutter/material.dart';
import 'package:sociaworld/g%C3%B6nderikarti.dart';

class ProfilSayfasi extends StatefulWidget {
  final String kullaniciAdi;
  final String isimSoyad;
  final String kapakResimLinki;
  final String profilResimLinki;

  ProfilSayfasi(
      {Key? key,
      required this.kullaniciAdi,
      required this.isimSoyad,
      required this.kapakResimLinki,
      required this.profilResimLinki});

  @override
  State<ProfilSayfasi> createState() => _ProfilSayfasiState();
}

class _ProfilSayfasiState extends State<ProfilSayfasi> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 230,
                  // color: Colors.amber,
                ),
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.kapakResimLinki),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 20,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.profilResimLinki),
                            fit: BoxFit.cover),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(width: 2, color: Colors.white)),
                  ),
                ),
                Positioned(
                  top: 190,
                  left: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.isimSoyad,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade800)),
                      Text(widget.kullaniciAdi,
                          style: TextStyle(color: Colors.grey.shade500))
                    ],
                  ),
                ),
                Positioned(
                  top: 110,
                  right: 25,
                  child: Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade700,
                      border: Border.all(width: 1.0, color: Colors.black),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RaisedButton(
                          child: new Text('Takip Et'),
                          textColor: Colors.black,
                          // 2
                          color: _hasBeenPressed
                              ? Colors.blue
                              : Colors.grey.shade200,
                          // 3
                          onPressed: () => {
                            setState(() {
                              _hasBeenPressed = !_hasBeenPressed;
                            })
                          },
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 75,
              decoration:
                  BoxDecoration(color: Color.fromARGB(31, 158, 158, 158)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  sayac("Takipçi", "857"),
                  sayac("Takip", "384"),
                  sayac("Paylaşım", "21"),
                ],
              ),
            ),
            GonderiKarti(
              profilResmiLinki:
                  "https://media.istockphoto.com/photos/smiling-woman-on-city-street-during-evening-picture-id1326419850?k=20&m=1326419850&s=612x612&w=0&h=o-Jz5VozSc4V0SJ9Forh0yHcvW9wY7REDowXiO0SUEw=",
              isimSoyad: "Sevinç Tüzün",
              gonderiResmiLinki:
                  "https://media.istockphoto.com/photos/woman-on-street-using-phone-at-evening-picture-id1326419622?k=20&m=1326419622&s=612x612&w=0&h=7XLRbKdWu7ahk5Xky8OYgFz066-TIhLC8UKEfWEmRIQ=",
              aciklama: "😊",
              gecenSure: "6 gün önce",
            ),
            GonderiKarti(
              profilResmiLinki:
                  "https://media.istockphoto.com/photos/smiling-woman-on-city-street-during-evening-picture-id1326419850?k=20&m=1326419850&s=612x612&w=0&h=o-Jz5VozSc4V0SJ9Forh0yHcvW9wY7REDowXiO0SUEw=",
              isimSoyad: "Sevinç Tüzün",
              gonderiResmiLinki:
                  "https://media.istockphoto.com/photos/young-woman-prepares-to-descend-throws-rope-from-summit-picture-id1180596659?k=20&m=1180596659&s=612x612&w=0&h=Vtuq4qreaDD6sNNKO8I_3jMBTkCwoyGfkSbd5jABfzI=",
              aciklama: "⛰️",
              gecenSure: "3 gün önce",
            ),
          ],
        ));
  }

  Column sayac(String sayi, String baslik) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          baslik,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          sayi,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
        )
      ],
    );
  }
}
