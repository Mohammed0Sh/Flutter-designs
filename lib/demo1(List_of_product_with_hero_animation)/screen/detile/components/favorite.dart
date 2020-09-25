import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Favorite extends StatefulWidget {
  var selected;
Favorite({this.selected=false});
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
 Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        setState(() {

         widget.selected=(widget.selected)?false:true;

        });

      },
     child: Container(
       margin: EdgeInsets.only(left: 20),
        height: 60,
        width: 60,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(30),
         color: Colors.white,
         boxShadow: [
           BoxShadow(
             color: Colors.black12,
             blurRadius: 30,
             spreadRadius: 5
           )
         ]
       ),
       child: Icon((widget.selected)?Icons.favorite:Icons.favorite_border,size: 35,color: Colors.red,),

      ),
    );
  }
}

