import 'dart:ui';

import 'package:deneme_tahtasi/promoCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class pageone extends StatefulWidget {
  const pageone({Key? key}) : super(key: key);

  @override
  _pageoneState createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
  @override
  Widget build(BuildContext context) {
    var genislik = MediaQuery.of(context).size.width;
    var yukseklik = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: yukseklik * 0.03,
            ),
            // Center(
            //     child: Text('I am Gaziantep',
            //         style: GoogleFonts.caveat(fontSize: 25))),
            // SizedBox(
            //   height: yukseklik * 0.03,
            // ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: genislik * 0.9,
                    height: yukseklik * 0.28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/top.jpg",
                            ))),
                  ),
                  Positioned(
                      right: 30,
                      bottom: 10,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Learn More',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ))),
                  Positioned(
                      left: 30,
                      top: 10,
                      child: Text(
                        'Gaziantep 2030 \n Hedefleri',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 46,
                            fontFamily: 'AlcatrazDemo'),
                      ))
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.fromLTRB(genislik * 0.05, 8, genislik * 0.05, 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Topics',
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        size: 40,
                      ))
                ],
              ),
            ),
            ////////properties bitti
            ///
            Align(
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: promoCard(
                          title: "Gaziantep'te Tarım",
                          desc: 'Bereketli hilalin ortasında yer...',
                          foto: 'https://picsum.photos/id/85/800/800',
                          tag: 'fdsf'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: promoCard(
                          title: 'Eski Gaziantep',
                          desc: 'Fotoğrafçı Halit Ziya Biçer sergisi...',
                          foto: 'https://picsum.photos/id/45/800/800',
                          tag: 'fdsf'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: promoCard(
                          title: 'fdfdf',
                          desc: 'fdsf',
                          foto: 'https://picsum.photos/id/55/800/800',
                          tag: 'fdsf'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: promoCard(
                          title: 'Gaziantep Endemik Türler',
                          desc: 'fdsf',
                          foto: 'https://picsum.photos/id/115/800/800',
                          tag: 'fdsf'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.fromLTRB(genislik * 0.03, 8, genislik * 0.03, 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('News',
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        size: 40,
                      ))
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.fromLTRB(genislik * 0.03, 1, genislik * 0.03, 1),
              child: Row(
                children: [
                  Container(
                    height: yukseklik * 0.15,
                    child: Image.network(
                      'https://picsum.photos/id/195/800/800',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: genislik * 0.5,
                        child: Text(
                          "Gaziantep Kurtuluş'un 100.yılı çoşkuyla kutlanıyor.",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: yukseklik * 0.02,
                      ),
                      Text(
                        '3h Ago',
                        style: TextStyle(color: Colors.grey.shade600),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
