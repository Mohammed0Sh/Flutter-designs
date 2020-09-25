import 'package:flutter/material.dart';
import 'package:flutter_demos/demo2(chat)/service/model_message_serv.dart' as serv;
class Category extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<Category> {
  var select=0;
  @override
 Widget build(BuildContext context) {
    return Container(
    color: Colors.blue,
      height: 100,

    child: ListView.builder(
      scrollDirection: Axis.horizontal,
       itemCount: serv.category.length,
       itemBuilder: (BuildContext context, int index) {
       return GestureDetector(
         onTap: (){
           setState(() {
             select=index;
           });
         },
         child: Align(
           child: Padding(
             padding: EdgeInsets.only(left: 50,),
             child: Text(serv.category[index],style: TextStyle(fontSize: 25,color:(index==select)? Colors.white:Colors.white70,fontWeight: FontWeight.bold),))),
       );
      },
     ),

    );
  }
}