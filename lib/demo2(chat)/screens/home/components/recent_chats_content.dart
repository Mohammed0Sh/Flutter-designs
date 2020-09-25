import 'package:flutter/material.dart';
import 'package:flutter_demos/demo2(chat)/screens/chat_screen/chat_screen.dart';
import 'package:flutter_demos/demo2(chat)/service/model_message_serv.dart' as serv;
class RecentChats extends StatelessWidget {
  const RecentChats({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: serv.messages.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatScreen(serv.messages[index])));
              },
                          child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topRight: Radius.circular(30),
                  ),
                  color: (serv.messages[index].unReed)? Colors.blue:Colors.white38
                ),
                margin: EdgeInsets.only(top: 10,right: 20),
                padding:
                    EdgeInsets.symmetric(vertical: 10, horizontal:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(serv.messages[index].sender.img),
                          radius: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*.6,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(serv.messages[index].sender.name,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                Text(
                                  serv.messages[index].msg,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          serv.messages[index].time,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        (serv.messages[index].unReed)?
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "new",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ):
                        SizedBox(height: 2,)
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
