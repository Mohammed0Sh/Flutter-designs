import 'package:flutter/material.dart';

class ReservationBotton extends StatelessWidget {
 final Function onPress;
  const ReservationBotton({
     this.onPress,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    highlightColor: Colors.red,
     onPressed:onPress,
    child:  Container(
     alignment: Alignment.center,
    
     height: 60,
     width: MediaQuery.of(context).size.width*.5,
              decoration: BoxDecoration(
             
     borderRadius: BorderRadius.all(Radius.circular(20)),

              ),
            child: Text("Reservation",style: TextStyle(
         fontWeight: FontWeight.bold,
         fontSize: 25,
         
       ),),
    ),
              );
  }
}

