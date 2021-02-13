import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miniproject/widgets/popular_items.dart';
import 'package:miniproject/widgets/popular_stores.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Icon lists to access icons
  List<IconData> _icons = [
    FontAwesomeIcons.gift,
    FontAwesomeIcons.birthdayCake,
    FontAwesomeIcons.utensils,
    FontAwesomeIcons.baby,
  ];

  Widget _buildIcon(int index) {
    return Container(
        height: 70.0,
        width: 70.0,
        decoration: BoxDecoration(
            color: Colors.red[50],
            borderRadius: BorderRadius.circular(30.0),
            // Adding some shadow for each icons
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                blurRadius: 10.0,
              )
            ]),
        child: Icon(
          _icons[index],
          size: 40.0,
          color: Colors.red[800],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kigali Shops'),
        titleSpacing: 01.0,
        centerTitle: true,
        // Add icons to app bar
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.user),
            onPressed: () {},
          )
        ],
        toolbarHeight: 60.2,
        elevation: 0.00,
        backgroundColor: Colors.red[900],
      ),
      body: SafeArea(
        // Listview that will hold all widgets
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'All Categories',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // build and print out icons
              children: <Widget>[
                _buildIcon(0),
                _buildIcon(1),
                _buildIcon(2),
                _buildIcon(3),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            PopularStores(),
            PopularItems(),
          ],
        ),
      ),
      // Create Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('My Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              decoration: BoxDecoration(
                color: Colors.red[800],
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Categories'),
              onTap: () {},
            ),
            ListTile(
              title: Text('My Cart'),
              onTap: () {},
            ),
          ],
        ),
      ),

      // Create navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.red[900],
        iconSize: 20,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home),
              label: 'Home',
              backgroundColor: Colors.red[800]),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.shoppingBag), label: 'My Cart'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: 'Profile',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Profile',
              backgroundColor: Colors.red),
        ],
      ),
    );
  }
}
