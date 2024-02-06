import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class OutputForm extends StatelessWidget {
  final String nama, tgl, tujuan, jumlah, price, totalPrice, image;
  OutputForm({
    Key? key,
    required this.nama,
    required this.tujuan,
    required this.jumlah,
    required this.tgl,
    required this.price,
    required this.totalPrice,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Colors.blueAccent,
        title: Text("Detail Pemesanan"),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(                                                      
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4.0,
                color: Colors.blueAccent,
                margin: EdgeInsets.only(top: 24, right: 24, left: 24),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.white,
                  ), 
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "${image}",
                          fit: BoxFit.cover,
                          height: displayHeight(context) * 0.25,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Nama : " + nama,
                            style: TextStyle(),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Tujuan : " + tujuan),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Tanggal : " + tgl),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Harga : Rp." + price),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Quantity : " + jumlah),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Total : Rp." + totalPrice),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
