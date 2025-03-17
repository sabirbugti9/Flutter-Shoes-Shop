import 'package:flutter/material.dart';
import 'package:flutter_shop_concept_ui/dashboard/view/dashboard.dart';
import 'package:flutter_shop_concept_ui/profile/view/profile.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoe shop Demo',
      theme: ThemeData(
        fontFamily: 'visby',
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PageController pController = PageController(initialPage: 0);
    return Scaffold(
      body: PageView(
        controller: pController,
        children: [
          DashboardPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 5, right: 5, left: 5),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: GNav(
          gap: 8,
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade900,
          padding: const EdgeInsets.all(10),
          selectedIndex: 0,
          onTabChange: (index) {
            if(index == 0){
              pController.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.ease);
            }
            if(index == 3){
              pController.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.ease);
            }
          },
          tabs: const [
            GButton(icon: LineIcons.home, text: 'Dashboard'),
            GButton(icon: LineIcons.search, text: 'Search'),
            GButton(icon: LineIcons.shoppingCart, text: 'Cart'),
            GButton(icon: LineIcons.user, text: 'Profile'),
          ],
        ),
      ),
    );
  }
}
