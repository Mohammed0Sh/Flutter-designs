import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demos/demo1(List_of_product_with_hero_animation)/components/search_box.dart';
import 'package:flutter_demos/demo1(List_of_product_with_hero_animation)/screen/product/component.dart/card_product.dart';
import 'package:flutter_demos/demo1(List_of_product_with_hero_animation)/screen/product/component.dart/category_list.dart';



class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Column(
      children: <Widget>[
        SearchBox(
          onchange: (value) {},
        ),
        CategoryList(),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: Stack(
          children: <Widget>[
            Container(
             // margin: EdgeInsets.only(top: 80),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (BuildContext context, index) {
                  return CardProduct(
                    index:index
                  );
                })
          ],
        ))
      ],
    ),
    );
  }
}


