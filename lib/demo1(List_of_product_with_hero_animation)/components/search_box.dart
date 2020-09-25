import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged onchange;
  const SearchBox({
    Key key,@required this.onchange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white.withOpacity(0.5),
      ),
      child: TextField(
        onChanged:onchange,
       style: TextStyle(
         color: Colors.white,
         fontSize: 24
       ),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
          icon: Icon(Icons.search,size: 35,color: Colors.white,),
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.white,fontSize: 25)

        ),
      ),
    );
  }
}