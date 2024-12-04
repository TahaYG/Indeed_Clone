import 'package:flutter/material.dart';
import 'package:indeed_project/pages/home_page.dart';
import 'package:indeed_project/pages/jobs_page.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  int _selectedIndex = 0;


  final List<Widget> _tabs = [
    HomeTab(),
    JobsTab()//Ana Sayfa Sekmesi
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue.shade900,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Ana Sayfa"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: "İşlerim"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Mesajlar"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profil"
          )
        ],
      ),
    );
  }
}