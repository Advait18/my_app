import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_app/src/common_widgets/home/drawer.dart';
import 'package:my_app/src/features/authenticaion/screens/bag/bag.dart';
import 'package:my_app/src/features/authenticaion/screens/wishlist/wishlist.dart';
import '../notificatons/notifications_page.dart';
import 'home_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const Bag(),
    const Wishlist(),
    const Notifications(),
  ];

  final user = FirebaseAuth.instance.currentUser;
  bool isDrawerOpen = false;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0C0C),
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        elevation: 1,
        shadowColor: const Color(0xAAFFFFFF),
        title: Text(
          'BASICS',
          style: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              context.push('/search');
            },
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Icon(CupertinoIcons.search, size: 25),
            ),
          ),
        ],
        backgroundColor: const Color(0xFF0C0C0C),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xFF131313),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: GNav(
            selectedIndex: _selectedIndex,
            gap: 8,
            backgroundColor: const Color(0xFF131313),
            color: Colors.white,
            activeColor: Colors.amber,
            tabBackgroundColor: Colors.grey.shade900,
            padding: const EdgeInsets.all(16),
            onTabChange: _onItemTap,
            tabs: const [
              GButton(
                icon: CupertinoIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: CupertinoIcons.bag,
                text: 'Bag',
              ),
              GButton(
                icon: CupertinoIcons.heart,
                text: 'Wishlist',
              ),
              GButton(
                icon: CupertinoIcons.bell,
                text: 'Notifications',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
