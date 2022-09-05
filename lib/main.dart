import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sociaworld/g%C3%B6nderikarti.dart';
import 'package:sociaworld/profilsayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32,
            ),
            onPressed: () {},
          ),
          title: Text("Spider",
              style: TextStyle(fontSize: 20, color: Colors.green[500])),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.purple,
                  size: 32,
                ),
                onPressed: () {})
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 110,
              decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    offset: Offset(0, 7.0),
                    blurRadius: 5.0)
              ]),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  profilKartiOlustur(
                      "Mine_Tunç ",
                      "https://cdn.pixabay.com/photo/2016/11/29/06/08/woman-1867715_960_720.jpg",
                      "Mine Tunç",
                      "https://cdn.pixabay.com/photo/2022/05/18/12/04/flower-7205105_960_720.jpg"),
                  profilKartiOlustur(
                      "AyşeS ",
                      "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553_960_720.jpg",
                      "Ayşe Sevinç",
                      "https://cdn.pixabay.com/photo/2014/01/02/15/30/graffiti-237656_960_720.jpg"),
                  profilKartiOlustur(
                      " Ackles",
                      "https://media.istockphoto.com/photos/portrait-of-successful-black-male-modern-day-student-holding-picture-id1311634222?k=20&m=1311634222&s=612x612&w=0&h=1a0XDWnZNPjk_5n7maZdzowaDfBcBohwoiZZF69qS9A=",
                      "Kazım Ackles",
                      "https://cdn.pixabay.com/photo/2016/03/04/19/36/beach-1236581__340.jpg"),
                  profilKartiOlustur(
                      "FikretK",
                      "https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?k=20&m=1300972574&s=612x612&w=0&h=kndUxGzi4W9gD_s-3Jq2vd9wxv2Qn2EEtZ7qjce1nhY=",
                      "Fikret Kızılok",
                      "https://cdn.pixabay.com/photo/2016/03/26/13/09/cup-of-coffee-1280537__340.jpg"),
                  profilKartiOlustur(
                      "Stuzun",
                      "https://media.istockphoto.com/photos/smiling-woman-on-city-street-during-evening-picture-id1326419850?k=20&m=1326419850&s=612x612&w=0&h=o-Jz5VozSc4V0SJ9Forh0yHcvW9wY7REDowXiO0SUEw=",
                      "Sevinç Tüzün",
                      "https://cdn.pixabay.com/photo/2017/05/11/11/15/workplace-2303851__340.jpg"),
                  profilKartiOlustur(
                      " Yesevi",
                      "https://media.istockphoto.com/photos/portrait-of-happy-confident-30s-young-businessman-picture-id1351342532?k=20&m=1351342532&s=612x612&w=0&h=qZw89UVJlhbGWJ_Web4ucT8agrBMGh0yCThr6NTAD38=",
                      "Ahmet Yesevi",
                      "https://media.istockphoto.com/photos/cyber-security-web-development-and-work-in-it-concept-picture-id1289411982?b=1&k=20&m=1289411982&s=170667a&w=0&h=0R3OXR4L6LOGphYA3sul4bWQwpGj_DSl05ENiP2kRZg="),
                  profilKartiOlustur(
                      "Mehmet ",
                      "https://media.istockphoto.com/photos/positive-businessman-picture-id514366990?k=20&m=514366990&s=612x612&w=0&h=oUD_Ih9y3PdIG4C7DWVvjWYrEXdidQCtDh0u_9isBpk=",
                      "Mehmet Hür",
                      "https://media.istockphoto.com/photos/parents-running-along-beach-with-children-on-summer-vacation-picture-id939180730?k=20&m=939180730&s=612x612&w=0&h=D6LNNzhi2_UTF6NxOOaYyBsQkK4BSLOIukJ_9QRaAos="),
                  profilKartiOlustur(
                      "Esranur",
                      "https://media-exp1.licdn.com/dms/image/C4D03AQGSTU00DVifFA/profile-displayphoto-shrink_800_800/0/1647009798660?e=1664409600&v=beta&t=SzphSmAuaoALpd6YKNMcRR12FhlXQDjKNC8VQ-My39U",
                      "Esranur Öz",
                      "https://cdn.pixabay.com/photo/2015/01/08/19/10/beach-593401__340.jpg")
                ],
              ),
            ),
            SizedBox(height: 10),
            GonderiKarti(
              profilResmiLinki:
                  "https://media.istockphoto.com/photos/portrait-of-successful-black-male-modern-day-student-holding-picture-id1311634222?k=20&m=1311634222&s=612x612&w=0&h=1a0XDWnZNPjk_5n7maZdzowaDfBcBohwoiZZF69qS9A=",
              isimSoyad: "Kazım Ackles",
              gonderiResmiLinki:
                  "https://media.istockphoto.com/photos/portrait-of-two-happy-black-guys-embracing-while-posing-over-beige-picture-id1337920042?k=20&m=1337920042&s=612x612&w=0&h=SdCBeqgTCBIzUOhlgL6UKtElgaC8ThaMJksJ1ZNIfts=",
              aciklama: "My Best" + "🤘🏾",
              gecenSure: "2 saat önce",
            ),
            GonderiKarti(
              profilResmiLinki:
                  "https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?k=20&m=1300972574&s=612x612&w=0&h=kndUxGzi4W9gD_s-3Jq2vd9wxv2Qn2EEtZ7qjce1nhY=",
              isimSoyad: "Fikret Kızılok",
              gonderiResmiLinki:
                  "https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_960_720.jpg",
              aciklama:
                  "Güneş batarken ardından tepelerin veda vakti geldi teletabilerin" +
                      "🌞",
              gecenSure: "3 saat önce",
            ),
            GonderiKarti(
              profilResmiLinki:
                  "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553_960_720.jpg",
              isimSoyad: "Ayşe Sevinç",
              gonderiResmiLinki:
                  "https://cdn.pixabay.com/photo/2022/04/22/20/54/assisi-city-7150611_960_720.jpg",
              aciklama: "😍😍😍😍😍",
              gecenSure: "6 saat önce",
            ),
          ],
        ) //coloumn yerine column da ekran dolunca aşağı kaymıyor,
        );
  }

  Padding profilKartiOlustur(String kullaniciAdi, String resimLinki,
      String isimSoyad, String kapakResimLinki) {
    //paddingle sarmaladığımız zaman return olarak
    //padding döndürdüğü için burdaki columnu padding yaptık

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (BuildContext context) {
              return ProfilSayfasi(
                profilResimLinki: resimLinki,
                kullaniciAdi: kullaniciAdi,
                kapakResimLinki: kapakResimLinki,
                isimSoyad: isimSoyad,
              );
            }));
          },
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(35),
                        image: DecorationImage(
                            image: NetworkImage(resimLinki),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
              ),
              SizedBox(height: 4),
              Text(kullaniciAdi,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
