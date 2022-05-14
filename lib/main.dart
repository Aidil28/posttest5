import 'dart:async';
import 'package:flutter/material.dart';
import 'package:posttest4_1915016140_m_aidil_s_a/main_screen.dart';
import 'LandingPage.dart';

// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko HandPhone',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: const Color(0xff0073AC),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() {
    var durasi = Duration(seconds: 4);
    return Timer(durasi, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainScreen()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 173, 246),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 100),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    image: DecorationImage(
                      image: AssetImage("assets/images/logohp.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(height: 100),
              Text("From"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HP Store Samarinda",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
