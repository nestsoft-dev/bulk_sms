import 'package:bulk_sms/pages/home.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List<Widget> _screens = [
  const HomePage(),
  ];
  
  int _currentIdex = 0;
  void onTap(int index) {
    setState(() {
      _currentIdex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIdex],
      bottomNavigationBar:
        BottomNavigationBar(currentIndex: _currentIdex, onTap: onTap, items:const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Profile'),
      ]),
    );
  }
}
