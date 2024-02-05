import 'package:belajar/helpers/size_helper.dart';
import 'package:belajar/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class ListWisataScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Laut Jawa",
      "kota": "Pulau Jawa",
      "image": "images/laut_jawa.jpg",
      "desc":
          "Laut Jawa merupakan perairan dangkal yang terletak di antara pulau Jawa, Kalimantan, Sumatera, dan Sulawesi di gugusan kepulauan Indonesia lainnya."
    },
    {
      "nama": "Laut Maluku",
      "kota": "Barat Samudra Pasifik",
      "image": "images/laut_maluku.jpg",
      "desc":
          "Laut Maluku terletak di di bagian barat Samudra Pasifik berdekatan dengan Provinsi Maluku, membatasi Laut Sulawesi di utara dan Laut Banda di bagian selatan."
    },
    {
      "nama": "Laut Sawu",
      "kota": "Provinsi Nusa Tenggara Timur",
      "image": "images/laut_sawu.jpg",
      "desc":
          "Laut Sawu terletak di antara Pulau Sumba, Pulau Sawu, Pulau Rote, Pulau Timor, dan Pulau Flores. Secara geografis, Laut Sawu berada di wilayah Provinsi Nusa Tenggara Timur dengan kedalaman sekitar 3,4 kilometer."
    },
    {
      "nama": "Laut Flores",
      "kota": "Utara Pulau Flores",
      "image": "images/laut_flores.jpg",
      "desc":
          "Laut Flores terletak di utara Pulau Flores. Laut Flores adalah batas alami Provinsi Nusa Tenggara Barat dengan Provinsi Sulawesi Selatan."
    },
    {
      "nama": "Laut Banda",
      "kota": "Maluku",
      "image": "images/laut_banda.jpg",
      "desc":
          "Laut Banda terletak di Maluku. Laut Banda memisahkan Samudra Pasifik dengan ratusan pulau kecil, Laut Halmahera, dan Laut Seram."
    },
    {
      "nama": "Laut Arafuru",
      "kota": "Ujung Tenggara Wilayah Indonesia",
      "image": "images/laut_arafuru.jpg",
      "desc":
          "Laut Arafuru terletak di ujung tenggara wilayah Indonesia, yaitu di antara Benua Australia dan Pulau Papua. Laut Arafuru terhubung langsung dengan Samudra Pasifik."
    },
    {
      "nama": "Laut Halmahera",
      "kota": "Sebelah Barat Maluku Utara",
      "image": "images/laut_halmahera.jpg",
      "desc":
          "Laut Halmahera terletak di sebelah barat Maluku Utara, Pulau Halmahera, dan pulau di ujung Papua. Laut Halmahera terhubung dengan Samudra Pasifik di bagian timur laut."
    },
    {
      "nama": "Laut Timor",
      "kota": "Benua Australia dan Pulau Timor (Timor leste dan NTT)",
      "image": "images/laut_timor.jpg",
      "desc":
          "Laut Timor terletak di antara Benua Australia dan Pulau Timor (Timor leste dan NTT). Laut Timor berbatasan dengan Samudra Indonesia yang terdapat di sebelah barat daya dan di bagian timur berbatasan dengan Laut Arafuru."
    },
    {
      "nama": "Laut Seram",
      "kota": "Antara Pulau Buru dan Pulau Seram",
      "image": "images/laut_seram.jpg",
      "desc":
          "Laut Seram terletak di antara Pulau Buru dan Pulau Seram. Laut Seram merupakan laut kecil yang merupakan bagian Samudra Pasifik."
    },
    {
      "nama": "Laut Sulawesi",
      "kota": "Utara Pulau Sulawesi",
      "image": "images/laut_sulawesi.jpg",
      "desc":
          "Laut Sulawesi terletak di utara Pulau Sulawesi dan di sebelah timur berbatasan dengan Pulau Kalimantan serta pulau di Filipia."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background1.jpg"),
                fit: BoxFit.cover)),
        child: ListView.builder(
          itemCount: wisataData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailWisataScreen(
                        nama: wisataData[index]["nama"],
                        kota: wisataData[index]["kota"],
                        image: wisataData[index]["image"],
                        desc: wisataData[index]["desc"]),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${wisataData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Text(
                    "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
