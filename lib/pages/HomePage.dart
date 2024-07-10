import 'package:e_commernce/components/bottoms_nav_bar.dart';
import 'package:e_commernce/pages/cartPage.dart';
import 'package:e_commernce/pages/shopePage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This selected buttom will controll the app
  int _selectedIndex = 0;
  // This section will update the our selected index
  // When the user taps the bottom
  void navigatedBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // page to display
  final List<Widget> _pages = [
    // shope page
    shopPage(),
    // cart page
    cartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyButtomNavBar(
        onTabChange: (index) => navigatedBottomBar(index),
      ),
      body: _pages[_selectedIndex],
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // open drawer
                Scaffold.of(context).openDrawer();
              },
            ),
          )),
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DrawerHeader(
                    child: Image.asset(
                  'lib/images/5842a0dca6515b1e0ad75af5.png',
                  color: Colors.white,
                )),

                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Info",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                // logo
              ],
            ),
            const Column(
              children: [
                // third icon
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
