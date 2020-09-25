import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demos/demo1(List_of_product_with_hero_animation)/screen/detile/components/body.dart';

import '../../constants.dart';


class DetileScreen extends StatelessWidget {
 var index;

 DetileScreen(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Back",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      backgroundColor: backgroundColor,
      body: Body(index:index),
    );
  }
}

