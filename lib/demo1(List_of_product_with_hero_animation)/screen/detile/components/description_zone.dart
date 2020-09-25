import 'package:flutter/cupertino.dart';

class DescriptionZone extends StatelessWidget {
  const DescriptionZone({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            
         Text("Tile Book",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 1,fontStyle: FontStyle.italic),),
        SizedBox(height: 10,),
        
        Text("description description description description description  description description description description description description description  description description description description description description description  description description description description description description  description description description ",maxLines: 6,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 20,
       
        ),),
       

        ],
      ) ,
    );
  }
}


