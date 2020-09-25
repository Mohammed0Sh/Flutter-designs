import 'package:flutter/material.dart';
import 'package:flutter_demos/demo2(chat)/service/model_message_serv.dart' as serv;
class FavorateContent extends StatelessWidget {
  const FavorateContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Colors.blue[100],
        borderRadius: BorderRadius.only(
         topLeft: Radius.circular(65),
      topRight: Radius.circular(65),
        )
      ),
      
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical:10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "favorate content",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blueGrey),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.blueGrey,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
          Container(
    
            height:120,
            child: ListView.builder(
            
                scrollDirection: Axis.horizontal,
                itemCount: serv.favorate.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.only(left: 20,bottom: 10,right: 10),
                           child: Column(
                      children: <Widget>[
                        CircleAvatar(
                         backgroundImage:AssetImage(serv.favorate[index].img),
                          radius: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                         serv.favorate[index].name,
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,letterSpacing: 1),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}