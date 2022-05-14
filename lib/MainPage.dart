import 'package:flutter/material.dart';
import 'LandingPage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 173, 246),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "HP Store Samarinda",
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    margin: EdgeInsets.only(top: 10, left: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("list.png"),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "HOME",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(top: 10, right: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("more.png"),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Text(
                  "Harga Bisa Berubah sewaktu-waktu(Last Update: 13 April 2022)",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 70,
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 30,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 232, 252, 255),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 15,
                          ),
                          child: Text(
                            'Bisa Chat : Admin 1 ',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 19, 164, 231),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 30,
                          margin: EdgeInsets.only(top: 8, right: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("wa.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 70,
                    margin: EdgeInsets.only(right: 20, top: 30),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 232, 240, 241),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 15,
                          ),
                          child: Text(
                            'Bisa Chat: Admin 2',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 19, 164, 231),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 30,
                          margin: EdgeInsets.only(top: 8, right: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("wa.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: lebar,
                height: 300,
                margin: EdgeInsets.only(
                  top: 30,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 8, 107, 193),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'iPhone 13 Pro MAX',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10, top: 5),
                          child: Text(
                            'Toko HandPhone Aidil',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 70,
                          margin: EdgeInsets.only(
                            top: 30,
                            right: 70,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("kiri.png"),
                            ),
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 200,
                          margin: EdgeInsets.only(
                            top: 30,
                            // right: 1000,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("ip.jpg"),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 200,
                          margin: EdgeInsets.only(
                            top: 30,
                            left: 1,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("kanan.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        'Harga : Rp 30.999.000',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 1000,
                    height: 30,
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          margin: EdgeInsets.only(left: 30, right: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("plus.png"),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => HomePage()));
                          },
                          child: Text("Cari Barang"),
                        ),
                      ],
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(context,
                  //         MaterialPageRoute(builder: (_) => HomePage()));
                  //   },
                  //   child: Text("Check Now"),
                  // ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
