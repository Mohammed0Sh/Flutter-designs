
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demos/demo3(similar_to_market)/gaming_list.dart';




class Home_Lib extends StatefulWidget {
  static String tag = "Home_Lib";
  @override
  _Home_LibState createState() => _Home_LibState();
}

class _Home_LibState extends State<Home_Lib> with SingleTickerProviderStateMixin{
   Animation animation;
  AnimationController animationController;
  String userName='';
  String userEmail='';
  String userId='';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 1));
    animation=Tween(begin: 1.0,end: 0.0).animate(CurvedAnimation(curve: Curves.fastOutSlowIn,parent: animationController));
    animationController.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  
       AnimatedBuilder(
         animation: animationController,
         builder:(BuildContext context,Widget widget){
         return
       Scaffold(
  
            body: Transform(
                    transform: Matrix4.translationValues(MediaQuery.of(context).size.width*animation.value, 0.0, 0.0),
                      child: SingleChildScrollView(
                                              child: Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/lib.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    RichText(
                        text: TextSpan(
                            text: 'Shop',
                            style: TextStyle(fontSize: 35),
                            children: [
                              TextSpan(
                                  text: 'go.',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic))
                            ]),
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: RoundedButtom(
                          title: 'start',
                          press: () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Game()));},
                        ),
                    ),
                  ],
                ),
              
          ),
                      ),
            ),
 );
         } ,);
         
   
  
  }
}

class RoundedButtom extends StatelessWidget {
  final String title;
  final Function press;
  const RoundedButtom({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * .01),
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 310),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                )
              ]),
          child: Text(
            title,
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
    );
  }
}
