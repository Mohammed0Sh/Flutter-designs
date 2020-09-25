import 'package:flutter/material.dart';
import 'package:flutter_demos/demo2(chat)/model/message.dart';
import 'package:flutter_demos/demo2(chat)/service/model_message_serv.dart' as serv;

class BuildMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ContentChat extends StatelessWidget {
  const ContentChat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _buildMessage(Message message, bool isMe) {
      var container = Container(
          width: MediaQuery.of(context).size.width * .8,
          margin: (isMe)
              ? EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .2,
                  top: 10,
                  bottom: 10,
                )
              : EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
          padding: (isMe)
              ? EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10)
              : EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: (isMe) ? Colors.blue[100] : Colors.orange[100],
              borderRadius: (isMe)
                  ? BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )
                  : BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(message.time),
              SizedBox(
                height: 4,
              ),
              Text(
                message.msg,
                style: TextStyle(fontSize: 15, color: Colors.black),
              )
            ],
          ));
      if (isMe)
        return container;
      else
        return Row(
          children: <Widget>[
            container,
            (!isMe)
                ? IconButton(
                    icon: Icon(
                      message.isLiked ? Icons.favorite : Icons.favorite_border,
                      size: 33,
                      color: Colors.red,
                    ),
                  )
                : SizedBox.shrink(),
          ],
        );
    }

    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: ListView.builder(
          reverse: true,
          itemCount: serv.messages.length,
          itemBuilder: (BuildContext context, int index) {
            bool isMe = (serv.messages[index].sender.uid == "0") ? true : false;

            return _buildMessage(serv.messages[index], isMe);
          },
        ),
      ),
    );
  }
}
