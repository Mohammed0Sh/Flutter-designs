import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_demos/demo2(chat)/model/message.dart';
import 'package:flutter_demos/demo2(chat)/screens/chat_screen/components/chat_content.dart';
import 'package:flutter_demos/demo2(chat)/screens/chat_screen/components/message_writer.dart';


class ChatScreen extends StatefulWidget {
  Message message;
  ChatScreen(this.message);
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.message.sender.name,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                children: <Widget>[
                  ContentChat(),
                  MessageComposer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
