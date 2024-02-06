import 'package:belajar/helpers/size_helper.dart';
import 'package:belajar/screens/output_booking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormBooking extends StatefulWidget {
  const FormBooking({super.key});

  @override
  State<FormBooking> createState() => _FormBookingState();
}

class _FormBookingState extends State<FormBooking> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //mendeskripsikan variabel input
  TextEditingController namaController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController tglController = TextEditingController();
  String _pilihTujuan = "";

  final List<String> tujuan = [
    "Laut Jawa",
    "Laut Maluku",
    "Laut Sawu",
    "Laut Flores",
    "Laut Banda",
    "Laut Arafuru",
    "Laut Halmahera",
    "Laut Timor",
    "Laut Seram",
    "Laut Sulawesi"
  ];

  void iniState() {
    tglController.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 4,
                  margin: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pemesanan Tiket",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: namaController,
                            decoration: InputDecoration(
                              hintText: "Nama Lengkap",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Nama';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                                hintText: "Tujuan",
                                labelText: "Pilih Tujuan",
                                border: OutlineInputBorder()),
                            items: tujuan.map((String items) {
                              int index = 0;
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _pilihTujuan = newValue!;
                              });
                            },
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: jumlahController,
                            decoration: InputDecoration(
                              hintText: "Jumlah Tiket",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Jumlah';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: tglController,
                            decoration: InputDecoration(
                              hintText: "Tanggal",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Tanggal';
                              }
                              return null;
                            },
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100),
                              );
                              if (pickedDate != null) {
                                String tgl =
                                    DateFormat('yyyy-MM-dd').format(pickedDate);
                                setState(() {
                                  tglController.text = tgl;
                                });
                              } else {
                                print("tanggal tidak dipilih");
                              }
                            },
                          ),
                          SizedBox(height: 18),
                          SizedBox(
                            width: displayWidth(context) * 0.8,
                            height: displayHeight(context) * 0.075,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.blueAccent),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                    side: BorderSide(color: Colors.black),
                                  ),
                                ),
                              ),
                              child: Text(
                                "Simpan",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                _submit();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _showAlertDialog(context);
      _formKey.currentState!.save();
    }
  }

  void _showAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text('Alert'),
              content: const Text('Are you sure?'),
              actions: <CupertinoDialogAction>[
                CupertinoDialogAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('No'),
                ),
                CupertinoDialogAction(
                  isDestructiveAction: true,
                  onPressed: () {
                    int price = 0;
                    String image = "";
                    String nama = namaController.text;
                    String tgl = tglController.text;
                    String jumlah = jumlahController.text;
                    String tujuan = _pilihTujuan;
                    if (tujuan == "Laut Jawa") {
                      price = 500000;
                      image = "images/laut_jawa.jpg";
                    } else if (tujuan == "Laut Maluku") {
                      price = 550000;
                      image = "images/laut_maluku.jpg";
                    } else if (tujuan == "Laut Sawu") {
                      price = 600000;
                      image = "images/laut_sawu.jpg";
                    } else if (tujuan == "Laut Flores") {
                      price = 400000;
                      image = "images/laut_flores.jpg";
                    } else if (tujuan == "Laut Banda") {
                      price = 650000;
                      image = "images/laut_banda.jpg";
                    } else if (tujuan == "Laut Arafuru") {
                      price = 500000;
                      image = "images/laut_arafuru.jpg";
                    } else if (tujuan == "Laut Halmahera") {
                      price = 500000;
                      image = "images/laut_halmahera.jpg";
                    } else if (tujuan == "Laut Timor") {
                      price = 500000;
                      image = "images/laut_timor.jpg";
                    } else if (tujuan == "Laut Seram") {
                      price = 500000;
                      image = "images/laut_seram.jpg";
                    } else if (tujuan == "Laut Sulawesi") {
                      price = 500000;
                      image = "images/laut_sulawesi.jpg";
                    }
                    int totalPrice = price * int.parse(jumlah);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OutputForm(
                              nama: nama,
                              tujuan: tujuan,
                              jumlah: jumlah,
                              tgl: tgl,
                              price: price.toString(),
                              totalPrice: totalPrice.toString(),
                              image: image)),
                    );
                  },
                  child: const Text('Yes'),
                )
              ],
            ));
  }
}
