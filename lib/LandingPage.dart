import 'package:flutter/material.dart';
import 'package:posttest4_1915016140_m_aidil_s_a/main.dart';
import 'MainPage.dart';
import 'Form.dart';
import 'label_name.dart';
import 'DetailPage.dart';

// import 'package:carousel_slider/carousel_slider.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // initState() {
  //   _title = 'default';
  // }

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
                      "Produk",
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
              Card(
                elevation: 0,
                margin: EdgeInsets.only(top: 40),
                color: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari HandPhone',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              LabelSubHeader('Keluaran Terbaru'),
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                          // decoration: BoxDecoration(
                          //   image: DecorationImage(
                          //     image: AssetImage("plus.png"),
                          //   ),
                          // ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => MyApp()));
                          },
                          child: Text("Kembali "),
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

class NewsItem extends StatelessWidget {
  const NewsItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        bottom: 10,
      ),
      // color: Colors.amber,
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              height: 100,
              width: 150,
              margin: EdgeInsets.only(
                top: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage("assets/images/ip.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '10 Jenis iPhone yang Keluaran Terbaru Di 2022',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '22 April 2022',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 194, 238, 240)),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => DetailPage()));
                            },
                            child: Text("Lihat Harga"),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 14,
                            color: Colors.blue,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
