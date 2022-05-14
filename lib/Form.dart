import 'dart:core';
import 'package:flutter/material.dart';
import 'LandingPage.dart';
// import 'package:posttest3_1915016140_mochammad_aidil_saputra_ali/MainPage.dart';

void main() {
  runApp(new MaterialApp(
    // home: new MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

enum JenisHP { iPhone, Samsung, Xiomi, Realme, Oppo }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => new _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  String nama = "", catatan = "";

  JenisHP? pilihhp = JenisHP.iPhone;

  String jumlah = "1";

  final namaCtrl = TextEditingController();
  final catatanCtrl = TextEditingController();

  void dispose() {
    namaCtrl.dispose();
    catatanCtrl.dispose();
    super.dispose();
  }

  // void kirimdata() {
  //   AlertDialog alertDialog = new AlertDialog(
  //     content: new Container(
  //       height: 200.0,
  //       child: new Column(
  //         children: <Widget>[
  //           new Text("Nama : ${namaCtrl}"),
  //           new Text("Nama : $pilihhp"),
  //           new Text("Nama : $jumlah"),
  //         ],
  //       ),
  //     ),
  //   );
  //   showDialog(context: context, child: alertDialog);
  // }
  // List<String> jumlah = ["1","2","3","4","5"];
  // String _jumlah = "1";

  // void pilihhp(String value) {
  //   setState(() {
  //     ip = value;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // var lebar = MediaQuery.of(context).size.width;
    // var tinggi = MediaQuery.of(context).size.height;
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 130, 226),
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: const Text("Mochammad Aidil Saputra Ali"),
        backgroundColor: Color.fromARGB(255, 28, 102, 187),
      ),
      body: ListView(padding: new EdgeInsets.all(10.0),
          // decoration:
          //     BoxDecoration(border: Border.all(color: Colors.green, width: 1)),
          // ignore: unnecessary_new
          children: [
            new Column(
              children: <Widget>[
                Text(
                  "Menu Pembayaran",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 1, 96, 220)),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new Container(
                  width: 400,
                  child: new TextField(
                    controller: namaCtrl,
                    decoration: new InputDecoration(
                        hintText: "Nama Lengkap",
                        labelText: "Nama Lengkap",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                ),

                // new Padding(padding: new EdgeInsets.only(top: 20.0)),
                // new Container(
                //   width: 400,
                //   child: new TextField(
                //     obscureText: true,
                //     decoration: new InputDecoration(
                //         hintText: "Password",
                //         labelText: "Password",
                //         border: new OutlineInputBorder(
                //             borderRadius: new BorderRadius.circular(20.0))),
                //   ),
                // ),

                // new Padding(padding: new EdgeInsets.only(top: 20.0)),
                // new TextField(
                //   maxLines: 4,
                //   decoration: new InputDecoration(
                //       hintText: "Deskripsi",
                //       labelText: "Deskripsi",
                //       border: new OutlineInputBorder(
                //           borderRadius: new BorderRadius.circular(20))),
                // ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new Container(
                    width: 500,
                    // height: 50,
                    margin: EdgeInsets.only(top: 10, right: 270),
                    child: Column(
                      children: [
                        Text(
                          "Pilih HandPhone",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                new Container(
                  width: 400,
                  child: new RadioListTile(
                    value: JenisHP.iPhone,
                    title: new Text("iPhone"),
                    groupValue: pilihhp,
                    onChanged: (JenisHP? value) {
                      setState(() {
                        pilihhp = value;
                      });
                      ;
                    },
                    activeColor: Colors.red,
                  ),
                ),
                new Container(
                  width: 400,
                  child: new RadioListTile<JenisHP>(
                    value: JenisHP.Samsung,
                    title: new Text("Samsung"),
                    groupValue: pilihhp,
                    onChanged: (JenisHP? value) {
                      setState(() {
                        pilihhp = value;
                      });
                      ;
                    },
                    activeColor: Colors.red,
                  ),
                ),
                new Container(
                  width: 400,
                  child: new RadioListTile<JenisHP>(
                    value: JenisHP.Xiomi,
                    title: new Text("Xiomi"),
                    groupValue: pilihhp,
                    onChanged: (JenisHP? value) {
                      setState(() {
                        pilihhp = value;
                      });
                      ;
                    },
                    activeColor: Colors.red,
                  ),
                ),
                new Container(
                  width: 400,
                  child: new RadioListTile<JenisHP>(
                    value: JenisHP.Realme,
                    title: new Text("RealMe"),
                    groupValue: pilihhp,
                    onChanged: (JenisHP? value) {
                      setState(() {
                        pilihhp = value;
                      });
                      ;
                    },
                    activeColor: Colors.red,
                  ),
                ),
                new Container(
                  width: 400,
                  child: new RadioListTile<JenisHP>(
                    value: JenisHP.Oppo,
                    title: new Text("Oppo"),
                    groupValue: pilihhp,
                    onChanged: (JenisHP? value) {
                      setState(() {
                        pilihhp = value;
                      });
                      ;
                    },
                    activeColor: Colors.red,
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 5.0)),

                new Container(
                  width: 400,
                  child: new Row(
                    children: <Widget>[
                      new Text(
                        "Jumlah:",
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 245, 42, 19)),
                      ),
                      new DropdownButton<String>(
                        value: jumlah,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 221, 236, 9)),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            jumlah = newValue!;
                          });
                        },
                        items: <String>['1', '2', '3', '4']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),

                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new Container(
                  width: 400,
                  child: new TextField(
                    controller: catatanCtrl,
                    maxLines: 3,
                    // controller: namaCtrl,
                    decoration: new InputDecoration(
                        hintText: "Catatan",
                        labelText: "Catatan",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                ),
                //  new DropdownButton(
                //    value: _jumlah,
                //    items: jumlah.map((String value){
                //      return new DropdownMenuItem(
                //        value: value,
                //        child: new Text(value),
                //      )
                //    }).toList(),
                //    )
                new Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: 30),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF0D47A1),
                                      Color(0xFF1976D2),
                                      Color(0xFF42A5F5),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    nama = namaCtrl.text;
                                    catatan = catatanCtrl.text;
                                  });
                                },
                                child: const Text("Tambah")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new Container(
                  width: 800,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 2, 19, 250), width: 3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nama Pelanggan : $nama",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text("Jenis Handphone : $pilihhp",
                          style: TextStyle(fontSize: 20)),
                      Text("Jumlah : $jumlah", style: TextStyle(fontSize: 20)),
                      Text("Catatan barang : $catatan",
                          style: TextStyle(fontSize: 20))
                    ],
                  ),
                )
              ],
            ),
          ]),
    );
  }
}
