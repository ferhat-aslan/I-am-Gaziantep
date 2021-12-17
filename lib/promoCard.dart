import 'package:flutter/material.dart';

import 'designLibrary.dart';

class promoCard extends StatelessWidget {
  static final List<Color> bgColors = [primaryPromoColor, secondaryPromoColor];
  String title;
  String desc;
  String foto;
  String tag;
  promoCard({
    required this.title,
    required this.desc,
    required this.foto,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    var genislik = MediaQuery.of(context).size.width;
    var yukseklik = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(15),
      width: genislik * 0.75,
      height: yukseklik * 0.2,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.orange, width: 3),
          borderRadius: BorderRadius.circular(7),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.1),
          //     offset: Offset.zero,
          //     blurRadius: 15,
          //   )
          // ],
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: bgColors),
          image: DecorationImage(image: NetworkImage(foto), fit: BoxFit.cover)),
      // COntainer Child
      child: Stack(
        children: [
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  margin: EdgeInsets.all(2),
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  margin: EdgeInsets.all(2),
                  child: Text(desc,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                      overflow: TextOverflow.fade),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
            left: 0,
            top: 0,
          ),
        ],
      ),
    );
  }
}
