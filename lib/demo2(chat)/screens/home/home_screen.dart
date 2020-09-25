import 'package:flutter/material.dart';
import 'package:flutter_demos/demo2(chat)/screens/home/components/home_body_content.dart';
import 'package:flutter_demos/demo2(chat)/service/model_message_serv.dart' as serv;
import 'components/category_content.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Chats",style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
       elevation: 0.0,
    
       actions: <Widget>[
         IconButton(
              icon: Icon(Icons.search,color: Colors.white,size: 30,),
         onPressed: (){},
         )
       ],
      ),
      drawer: Drawer(
        child: ListView(

          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName:Text("mohammad",style: TextStyle(fontSize: 20,),),
              accountEmail:Text("mohammad@gmail.com",style: TextStyle(fontSize: 18,),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(serv.currentUser.img),

              ),  
              otherAccountsPictures: <Widget>[
               CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("user"),

              ),
              ], 
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                )
              ) 
            ),
            Divider(),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.info),
              title: Text("My information"),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
          
              ),
            ),
              ListTile(
                onTap: (){
                  Navigator.of(context).pop();

                },
              leading: Icon(Icons.info),
              title: Text("Close"),
              trailing: IconButton(
                icon: Icon(Icons.close),
               
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.blue,

      body: Column(
        children: <Widget>[
          Category(),
          HomeBodyContent()
        ],
      ),
    );
  }
}

