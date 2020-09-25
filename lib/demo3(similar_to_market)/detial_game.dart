import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailGame extends StatelessWidget {
  final String image;
  final String title;
  DetailGame(@required this.image, this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(30),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(100))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 35,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '\$',
                        style: TextStyle(fontSize: 30, color: Colors.green),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '20%',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.red),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FloatingActionButton(
                        onPressed: () {
                          
                        },
                        splashColor: Colors.blueAccent,
                        backgroundColor: Colors.orange,
                        child: Icon(
                          Icons.local_grocery_store,
                          size: 35,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 230,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                  image,
                                ),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(offset: Offset(5, 10), blurRadius: 5)
                            ]),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 30,top: 25,right: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'information about game',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(
                        height:8,
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                         Container(
                            padding: EdgeInsets.all(10),
                           width: MediaQuery.of(context).size.width*.4,
                            height: 80,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.only(
                               topRight: Radius.circular(30),
                               topLeft: Radius.circular(30),
                             )
                           ),
                            child: Column(                           
                             children: <Widget>[
                               Text('Option1',
                               style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold
                               ),
                               ),
                             ],
                           ),
                         ),

                          Container(
                            padding: EdgeInsets.all(10),
                           width: MediaQuery.of(context).size.width*.4,
                          height: 80,
                           decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(30) ,
                               topRight: Radius.circular(30),
                             ),
                             color: Colors.white
                           ),
                           child: Column(
                             
                             children: <Widget>[
                               Text('Option2',
                               style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold
                               ),
                               ),
                             ],
                           ),
                         )
                        ],
                      )
                    ]),
              ))
        ],
      ),
    );
  }
}
