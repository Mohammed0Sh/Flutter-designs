import 'package:flutter_demos/demo2(chat)/model/user.dart';

class Message{

  User sender;
  String msg;
  String time;
  bool isLiked;
  bool unReed;

  Message({this.sender,this.msg,this.time,this.isLiked,this.unReed});
 


}