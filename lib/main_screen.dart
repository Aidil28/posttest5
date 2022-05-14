import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'Form.dart';
import 'LandingPage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  String _title = '';

  List<Widget> _widgetOptions = <Widget>[
    MainPage(),
    HomePage(),
    MyHomePage(),
  ];

  // initState() {
  //   _title = 'default';
  // }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 173, 246),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color(0xff0073AC),
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Produk",
              icon: Icon(Icons.production_quantity_limits),
            ),
            BottomNavigationBarItem(
              label: "Form",
              icon: Icon(Icons.mail),
            ),
            // BottomNavigationBarItem(
            //   label: "Jadwal",
            //   icon: Icon(Icons.calendar_today),
            // ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'Home';
          }
          break;
        case 1:
          {
            _title = 'Produk';
          }
          break;
        case 2:
          {
            _title = 'Form';
          }
          break;
      }
    });
  }
}
