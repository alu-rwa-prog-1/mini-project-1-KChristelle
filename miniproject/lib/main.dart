import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {},
        // ),
        title: Text('Shopping App'),
        titleSpacing: 01.0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          )
        ],
        toolbarHeight: 60.2,
        elevation: 0.00,
        backgroundColor: Colors.red[900],
      ),
      body: Container(
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.fastfood),
              onPressed: () {},
            ),
          ],
        ),
      ),
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
    ),

    debugShowCheckedModeBanner: false, //Remove Debug banner
  ));
}
