
import 'package:flutter/material.dart';
import 'package:flutter_demos/demo1(List_of_product_with_hero_animation)/screen/detile/detile_screen.dart';

class CardProduct extends StatelessWidget {
  final index;
  const CardProduct({
    Key key, this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:
      EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: 180,
        width: double.infinity,
        child: Stack(
    alignment: Alignment.bottomCenter,
    children: <Widget>[
      Container(
        height: 150,
        decoration: BoxDecoration(
            color: (index.isEven)
                ? Colors.blue
                : Colors.orange,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  blurRadius: 30, color: Colors.black26)
            ]),
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white),
        ),
      ),
      Row(
        children: <Widget>[
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(left: 0),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 50,
                      ),
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "fdsfvsefvsedvfse efvsedvfsedv sed sed ",
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DetileScreen(index)));
                      },
                       child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              color: (index.isEven)
                                  ? Colors.blue
                                  : Colors.orange,
                              borderRadius:
                                  BorderRadius.only(
                                bottomLeft:
                                    Radius.circular(20),
                                topRight:
                                    Radius.circular(20),
                              )),
                          child: Text(
                            "choose",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ],
                )),
          ),
          Hero(
            tag: index,
          child: Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    // 
                    'assets/${index + 1}.jpg',
                    fit: BoxFit.cover,
                    height: 150,
                    width: 130,
                  )),
            ),
          ),
        ],
      ),
    ],
        ),
      );
  }
}
