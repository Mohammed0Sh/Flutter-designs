import 'package:flutter/material.dart';
import 'package:flutter_demos/demo2(chat)/screens/home/components/favorate_content.dart';
import 'package:flutter_demos/demo2(chat)/screens/home/components/recent_chats_content.dart';

class HomeBodyContent extends StatefulWidget {
  @override
  _HomeBodyContentState createState() => _HomeBodyContentState();
}

class _HomeBodyContentState extends State<HomeBodyContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(65),
              topRight: Radius.circular(65),
            )),
        child: Column(
          children: <Widget>[
            FavorateContent(),
            RecentChats()
          ],
        ),
      ),
    );
  }
}

