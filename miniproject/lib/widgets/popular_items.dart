import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopularItems extends StatelessWidget {
  Container Items(String image, String title, String subtitle) {
    return Container(
      width: 250.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(image),
            ListTile(
              title: Text(title),
              subtitle: Text(subtitle),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Popular Items',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              SizedBox(
                width: 95.0,
              ),
              Text(
                'View All',
                style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.5),
              ),
              Icon(
                FontAwesomeIcons.arrowRight,
                size: 16.0,
                color: Colors.red[900],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          height: 300.0,
          // color: Colors.blue,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Items(
                  'https://images.unsplash.com/photo-1590080875795-d1150371b9f3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
                  'Tiramisu',
                  'From Slice & Cakes'),
              Items(
                  'https://images.unsplash.com/photo-1516627145497-ae6968895b74?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8YmFieSUyMHRveXN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60',
                  'KidiZoom Camera',
                  'From Baby Haven'),
              Items(
                  'https://images.unsplash.com/photo-1513885535751-8b9238bd345a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
                  'Care Package',
                  'From Gift Master'),
              Items(
                  'https://images.unsplash.com/photo-1515488042361-ee00e0ddd4e4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1054&q=80',
                  'Baby Haven',
                  'Best baby toys in Kigali.'),
            ],
          ),
        ),
      ],
    );
  }
}
