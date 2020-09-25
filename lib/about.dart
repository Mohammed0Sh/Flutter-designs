import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
              child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange,Colors.red[400]]
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20),
                            child: Align(
                  alignment: Alignment.topLeft,
                  child:IconButton(
                    icon: Icon(Icons.arrow_back_ios,),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  ) ),
              ),
             Padding(
               padding: EdgeInsets.only(left: 20,top: 20),
               child: Row(
                 children: <Widget>[
          
                   Container(
                    width: 150,
                    height: 150,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       border: Border.all(
                         width: 4,
                         color: Colors.white
                       ),
                       image:DecorationImage(
                         image: AssetImage('assets/Iam.jpg',
                         ),
                         fit: BoxFit.cover
                       ),
                       borderRadius: BorderRadius.circular(80)
                     ),
                   ),
                   Container(
                    margin: EdgeInsets.only(left: 50),
                     child: Text("My resume",
                     style: TextStyle(
                       fontSize: 30,
                       color: Colors.white70,
                       fontWeight: FontWeight.bold
                     ),
                     ),
                   )
                 ],
               ),
             ),
             SizedBox(height: 30,),
             Container(

               padding: EdgeInsets.all(10),
               alignment: Alignment.topLeft,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text('Contact info :',
                   style: TextStyle(
                       fontSize: 27,
                       color: Colors.white70,
                       fontWeight: FontWeight.bold
                     ),
                   ),
                   Container(
                     padding: EdgeInsets.only(top: 20,bottom: 10),
                     alignment: Alignment.topLeft,
                     child: Text(
                       'My name is mohammed shnan \nMy mail is from the Faculty of Informatics Engineering with a specialization in software. This is the nest of simple interfaces. I did not work on a complete application , but I am ready to develop applications.',
                      
                       style: TextStyle(
                       fontSize: 23,
                       color: Colors.white,
                       
                     ),
                   
                     ),
                   ),

              
                 ],
               )
             ),
             SizedBox(height: MediaQuery.of(context).size.height*(.1),),
             Container(
               padding: EdgeInsets.all(20),
                          child: Text('My phone is : +963 95 9465066 \nand mail is : mohammed0shnan@gmail.com',
                     style: TextStyle(
                       fontSize: 23,
                       color: Colors.white,
                       
                     ),
               ),
             )

            ],
          ),
        ),
      ),
    );
  }
}