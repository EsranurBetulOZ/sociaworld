import 'dart:ui';

import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  final String profilResmiLinki;
  final String isimSoyad;
  final String gecenSure;
  final String gonderiResmiLinki;
  final String aciklama;

  const GonderiKarti(
      {Key? key,
      required this.profilResmiLinki,
      required this.isimSoyad,
      required this.gecenSure,
      required this.gonderiResmiLinki,
      required this.aciklama})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: 380.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: NetworkImage(profilResmiLinki),
                                fit: BoxFit.cover),
                          )),
                      SizedBox(width: 12.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isimSoyad,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            gecenSure,
                            style:
                                TextStyle(color: Colors.black45, fontSize: 14),
                          )
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              SizedBox(height: 14),
              Text(
                aciklama,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                gonderiResmiLinki,
                width: double.infinity,
                height: 176,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconluButonum(
                      ikonum: Icons.favorite,
                      yazi: "Beğeni",
                      fonksiyonum: () {}),
                  IconluButonum(
                      ikonum: Icons.comment,
                      yazi: "Yorum",
                      fonksiyonum: () {
                        print("yorum");
                      }),
                  TextButton.icon(
                      //flatbutton aynı
                      onPressed: () {},
                      icon: Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                      label: Text(
                        "Paylaş",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconluButonum extends StatelessWidget {
  final IconData? ikonum;
  final String yazi;
  final dynamic fonksiyonum;

  IconluButonum({this.ikonum, required this.yazi, this.fonksiyonum});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors
          .white, //tex buttonun arkası beya ama ikonlu butonlarınınki griydi buyüzden kullandık.
      child: InkWell(
        onTap: fonksiyonum,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(ikonum, color: Colors.grey),
              SizedBox(
                width: 5,
              ),
              Text(
                yazi,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
