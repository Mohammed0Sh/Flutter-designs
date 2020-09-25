import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demos/demo1(List_of_product_with_hero_animation)/screen/detile/components/favorite.dart';



class DotList extends StatelessWidget {
  const DotList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Favorite(
            
          ),
     
        ],
      ),
    );
  }
}
