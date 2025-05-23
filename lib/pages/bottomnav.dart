import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:moviebookingapp/pages/booking.dart';
import 'package:moviebookingapp/pages/home.dart';
import 'package:moviebookingapp/pages/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;

  late Home HomePage;
  late Booking booking;
  late Profile profile;

  int currentTabIndex = 0;

  @override
  void initState() {
    HomePage = const Home();
    booking = const Booking();
    profile = const Profile();

    pages = [HomePage, booking, profile]; // Agrega todas las pantallas
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        color: const Color.fromARGB(255, 204, 151, 7),
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(Icons.book, color: Colors.white, size: 30.0),
          Icon(Icons.person, color: Colors.white, size: 30.0)
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
