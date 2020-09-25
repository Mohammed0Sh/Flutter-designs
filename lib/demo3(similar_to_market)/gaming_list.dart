
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demos/demo3(similar_to_market)/detial_game.dart';



class Game extends StatefulWidget {
  static String tag = 'Game';
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              // height: MediaQuery.of(context).size.height * .35,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/pic_play.jpg'),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                                              child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: (){Navigator.of(context).pop();},
                        ),
                      )
,
                      Container(
                          padding: EdgeInsets.only(right: 20),
                          child: IconButton(
                            icon: Icon(
                              Icons.search,
                              size: 35,
                              color: Colors.white,
                            ),
                
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ItemOFList(
                          pressDetial: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailGame(
                                      'assets/1.jpg', 'Gamaing title 1'),
                                ));
                          },
                          img: "assets/1.jpg",
                          title: 'Gamaing title 1',
                          subTitle: "gaming subtitle 1",
                          raite: 4.5,
                        ),
                        ItemOFList(
                          pressDetial: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailGame(
                                      'assets/2.jpg', 'Gamaing title 2'),
                                ));
                          },
                          img: "assets/2.jpg",
                          title: 'Gamaing title 2',
                          subTitle: "gaming subtitle 2",
                          raite: 4.7,
                        ),
                        ItemOFList(
                          pressDetial: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailGame(
                                      'assets/3.jpg', 'Gamaing title 3'),
                                ));
                          },
                          img: "assets/3.jpg",
                          title: 'Gamaing title 3',
                          subTitle: "gaming subtitle 3",
                          raite: 4.2,
                        ),
                        ItemOFList(
                          pressDetial: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailGame(
                                      'assets/4.jpg', 'Gamaing title 4'),
                                ));
                          },
                          img: "assets/4.jpg",
                          title: 'Gamaing title 4',
                          subTitle: "gaming subtitle 4",
                          raite: 3.1,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                              text: 'The most played ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 23),
                              children: [
                                TextSpan(
                                    text: 'today ... ',
                                    style: TextStyle(color: Colors.red))
                              ]),
                        ),
                        Container(
                          height: 180,
                          width: double.infinity,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 15,
                                      top: 25,
                                      right: MediaQuery.of(context).size.width *
                                          .3),
                                  height: 160,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade50,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Name gaming and detial Name gaming and detial Name gaming and detial .",
                                        maxLines: 3,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          RoundedScour(
                                            scoure: 4.7,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'text text texttext text texttexttexttext text text texttexttexttext  text text texttexttexttext texttexttext texttext text text text text text ',
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                  height: 130,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage('assets/1.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * .27,
                                    height: 40,
                                    child: ChooseButton(pressChoose: () {})),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Continue',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic),
                              children: [
                                TextSpan(
                                  text: ' Playing...',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFD3D3D3).withOpacity(.84),
                                    offset: Offset(0, 3))
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15, top: 15),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: RichText(
                                                text: TextSpan(
                                                    text:
                                                        'text information text information ,text information . ',
                                                    style: TextStyle(
                                                        color: Colors.black)),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 10),
                                              child: Icon(
                                                Icons.gamepad,
                                                color: Colors.red,
                                                size: 50,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                  ),
                                  height: 8,
                                  width: MediaQuery.of(context).size.width * .6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemOFList extends StatelessWidget {
  final String img;
  final String title;
  final String subTitle;
  final Function pressChoose;
  final Function pressDetial;
  final double raite;

  const ItemOFList({
    Key key,
    this.img,
    this.title,
    this.subTitle,
    this.pressChoose,
    this.pressDetial,
    this.raite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, bottom: 30),
      height: 260,
      width: 200,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 23,
            child: Container(
              height: 230,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)]),
            ),
          ),
          Positioned(
            left: 5,
            child: Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.fill)),
            ),
          ),
          Positioned(
            right: 15,
            top: 30,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(blurRadius: 20, color: Colors.grey.shade400)
                      ]),
                  child: RoundedScour(
                    scoure: raite,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 153,
            child: Container(
              width: 200,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 6),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                          text: title,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: '\n$subTitle',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15))
                          ]),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: pressDetial,
                        child: Container(
                          width: 85,
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Detial",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ChooseButton(pressChoose: pressChoose),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChooseButton extends StatelessWidget {
  const ChooseButton({
    Key key,
    @required this.pressChoose,
  }) : super(key: key);

  final Function pressChoose;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressChoose,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            )),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          "Play",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}

class RoundedScour extends StatelessWidget {
  final double scoure;
  const RoundedScour({
    Key key,
    this.scoure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.star,
            color: Colors.orange,
            size: 20,
          ),
          onPressed: () {},
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 9),
          child: Text(
            "$scoure",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
