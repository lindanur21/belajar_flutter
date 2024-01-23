import 'package:flutter/material.dart';

class Latihan3 extends StatelessWidget {
  const Latihan3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: double.infinity,
          height: 150,
          margin: EdgeInsets.all(10),
          // padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
             image: DecorationImage(
              image: NetworkImage(
                "https://pbs.twimg.com/profile_images/1560508217867718657/8ak-Td6l_400x400.jpg",
              ),
              fit: BoxFit.cover),
            // color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          width: double.infinity,
          height: 150,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
          color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                 width:120,
                height: 150,
                margin: EdgeInsets.only(right: 10),
                // padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://ae01.alicdn.com/kf/Sacf53e84a1b442b38c8d1b5fbc9c5c56s.jpg_640x640Q90.jpg_.webp",
                      ),
                      fit: BoxFit.fill),
                  // color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                width: 240,
                height: 200,
                child: Text(
                  "Film Marvel Cinematic Universe (MCU) adalah serangkaian film pahlawan super Amerika yang diproduksi oleh Marvel Studios berdasarkan karakter yang muncul dalam publikasi Marvel Comics .", textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GALLERY", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(right: 10),
              // padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://ae01.alicdn.com/kf/Sacf53e84a1b442b38c8d1b5fbc9c5c56s.jpg_640x640Q90.jpg_.webp",
                    ),
                    fit: BoxFit.fill),
                // color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(right: 10),
              // padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://media.suara.com/pictures/970x544/2018/04/25/55817-avengers-infinity-war.jpg",
                    ),
                    fit: BoxFit.fill),
                // color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(right: 10),
              // padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/6VjdV7sZB64T1Cs-eOnGnAX_8H0=/0x0:0x0/750x500/data/photo/buku/639a7dfa03c22.jpg",
                    ),
                    fit: BoxFit.fill),
                // color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        )
      ],
    );
  }
}
