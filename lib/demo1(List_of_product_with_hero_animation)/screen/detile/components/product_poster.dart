import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key key, this.img,
  }) : super(key: key);
  final String img;

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
        margin: EdgeInsets.only(top:30),
        height: 300,
        width: 300,
        
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                   ) ,
            ),
       CircleAvatar(
             radius: 120,
             backgroundColor: Colors.transparent,
             child: ClipRRect(
               borderRadius: BorderRadius.all(Radius.circular(100)),
               child: Image.asset(img,fit: BoxFit.cover,))),
       
           
          ],
        ),
        
      ),
    );
  }
}
