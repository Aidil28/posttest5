import 'package:flutter/material.dart';
import 'LandingPage.dart';
import 'Custom_Alert.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("HP Store Samarinda"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 46, 173, 246),
      ),
      backgroundColor: Color.fromARGB(255, 46, 173, 246),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: 500,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/ip3.jpg"))),
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "IPHONE 12 PRO MAX",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Spesifikasi HP:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Layar: 6,7 inci OLED (2.778 x 1.284 piksel), 458 ppi"),
                  Text("Dimensi: 160,8x78,1x7,4 mm, berat: 228 gram"),
                  Text("Chipset: Apple A14 Bionic "),
                  Text("SIM: Dual SIM : Nano dan e-SIM "),
                  Text("Kamera depan: 12 MP "),
                  Text(
                      "Kamera belakang: Kamera wide 12 MP Kamera ultra-wide 12 MP, Kamera telephoto 12 MP "),
                  Text("Sistem operasi: iOS 14 "),
                  Text(
                      "Fitur lainnya : Lidar Scanner, Fast charging 18 Watt, Wi-Fi 802.11, water resistant IP68, wireless charging 15 Watt "),
                  Text("Warna: Silver, Graphite, Gold, Pacific Blue"),
                  Text(
                      "Kapasitas dan Harga: 128 GB = Rp 20.499.000, 256 GB = Rp 22.999.000,  512 GB = Rp 26.999.000"),
                  Text(
                    "Stok: 10",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text("Apakah anda Ingin beli?"),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      Navigator.pop(context);
                                      CustomAlert(
                                          context, "Pembelian Berhasil");
                                    });
                                  },
                                  child: Text("YES")),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("NO"))
                            ],
                          );
                        });
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 15, 63, 221),
                      primary: Colors.white),
                  child: Text("Beli Sekarang"))
            ],
          )
        ],
      ),
    );
  }
}
