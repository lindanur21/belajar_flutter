import 'package:flutter/material.dart';

class ListItem {
  final String text;
  final String images;

  ListItem(this.text, this.images);
}

class Latihan3_1 extends StatelessWidget {
  Latihan3_1({super.key});

  final List<ListItem> itemList = [
    ListItem("Film Marvel Cinematic Universe (MCU) adalah serangkaian film pahlawan super Amerika yang diproduksi oleh Marvel Studios berdasarkan karakter yang muncul dalam publikasi Marvel Comics .", "https://ae01.alicdn.com/kf/Sacf53e84a1b442b38c8d1b5fbc9c5c56s.jpg_640x640Q90.jpg_.webp"),
    ListItem("Marvel Cinematic Universe adalah media waralaba Amerika Serikat dan jagat bersama (shared universe) yang berpusat pada serangkaian film pahlawan super, yang diproduksi secara mandiri oleh Marvel Studios, dan yang didasarkan pada karakter-karakter yang muncul dalam buku-buku komik Amerika terbitan Marvel Comics.", "https://media.suara.com/pictures/970x544/2018/04/25/55817-avengers-infinity-war.jpg"),
    ListItem("Marvel Studios merilis film-filmnya dalam kelompok yang disebut Fase, dengan tiga fase pertama secara kolektif dikenal sebagai The Infinity Saga dan tiga fase berikutnya sebagai The Multiverse Saga.", "https://asset.kompas.com/crops/6VjdV7sZB64T1Cs-eOnGnAX_8H0=/0x0:0x0/750x500/data/photo/buku/639a7dfa03c22.jpg"),
    ListItem("Film yang pertama kali dirilis di MCU adalah Iron Man (2008), yang memulai Fase Satu dari seri film tersebut, yang berpuncak pada film persilangan The Avengers (2012).", "https://asset.kompas.com/crops/I7ySpCU1r9Rc6s2bL7UMAu7ajf8=/0x68:900x668/375x240/data/photo/2022/10/04/633ba85ce7dae.jpg"),
    ListItem("Marvel Television memperluas jagat ini ke televisi berjaringan dengan serial Marvel's Agents of S.H.I.E.L.D. di ABC pada tahun 2013–2014.", "https://static.promediateknologi.id/crop/438x0:1282x586/750x500/webp/photo/p1/682/2023/10/25/pjimage-12-1-1807393838.jpg"),
    ListItem("Marvel Television juga telah menghasilkan seri digital Marvel's Agents of S.H.I.E.L.D.: Slingshot. Album musik tema juga dirilis untuk seluruh film dan sebagian besar seri televisi, serta album kompilasi yang berisi musik yang ada di film MCU.", "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/02/07/1937423688.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blueGrey,
      child: Column(
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
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  width: 120,
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
                  width: 400,
                  height: 200,
                  child: ListView.separated(
                    itemCount: itemList.length,
                    separatorBuilder: (context, index) {
                      return Container(
                        width: 5,
                        height: 5,
                        color: Colors.grey,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 300,
                        color: Colors.grey,
                        child: Center(
                          child: Text(itemList[index].text),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "GALLERY",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.only(right: 10),
            // padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemList.length,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 300,
                    width: 200,
                    child: Image.network(itemList[index].images),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
