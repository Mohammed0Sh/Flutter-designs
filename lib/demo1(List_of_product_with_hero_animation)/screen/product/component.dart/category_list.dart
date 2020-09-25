import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List<String> category=['option1','option2','option3','option4','option5'];
  var selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemBuilder: (BuildContext context , index){
                 return GestureDetector(
                   onTap: (){
                     setState(() {
                       selectedIndex=index;
                     });
                   },
                     child: Container(
                     padding: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                       color:(selectedIndex==index)? Colors.white.withOpacity(0.35):Colors.transparent,
                       borderRadius: BorderRadius.circular(10)
                     ),
                    margin: EdgeInsets.only(left:60,top: 5,right: (selectedIndex == category.length-1)?15:0),
                     alignment: Alignment.center,
                     child: Text(category[index],style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                   ),
                 );
             },
             itemCount: 5,
             ),
    );
  }
}

