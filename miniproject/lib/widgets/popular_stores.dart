import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopularStores extends StatelessWidget {
  Container Stores(String image, String title, String subtitle) {
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
                'Popular Stores',
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
              Stores(
                  'https://images.unsplash.com/photo-1611293388250-580b08c4a145?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1022&q=80',
                  'Slice & Cakes',
                  'All the best pasteries in Kigali.'),
              Stores(
                  'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
                  'Taste Green',
                  'Healthy Meals'),
              Stores(
                  'https://images.unsplash.com/photo-1513885535751-8b9238bd345a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
                  'Gift Master',
                  'Create personalized gifts.'),
              Stores(
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
