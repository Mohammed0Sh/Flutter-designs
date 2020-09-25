import 'package:flutter/material.dart';
import 'package:flutter_demos/about.dart';
import 'package:flutter_demos/demo1(List_of_product_with_hero_animation)/screen/product/product_screen.dart';
import 'package:flutter_demos/demo2(chat)/screens/home/home_screen.dart';
import 'package:flutter_demos/demo3(similar_to_market)/library_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: Demos());
  }
}

class Demos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                  child: RichText(
                    text: TextSpan(
                        text: 'My List Of ',
                        style: TextStyle(
                            fontSize: 35,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: 'Demo',
                            style: TextStyle(color: Colors.red, fontSize: 50),
                          )
                        ]),
                  )),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    DemoButton(
                      text: "Go to Demo 1",
                      press: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProductScreen()));
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DemoButton(
                      text: "Go to Demo 2",
                      press: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DemoButton(
                      text: "Go to Demo 3",
                      press: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Home_Lib()));
                      },
                    ),
                    Spacer(),
                    FlatButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>About()));
                      },
                      child: Text("Click for more About me",
                      style: TextStyle(
                        fontSize: 25
                      ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DemoButton extends StatelessWidget {
  final String text;
  final Function press;
  const DemoButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: press,
      fillColor: Colors.orange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * (0.6),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white24,
                  size: 23,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white60,
                  size: 25,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 27,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
