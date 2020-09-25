import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demos/demo1(List_of_product_with_hero_animation)/screen/detile/components/description_zone.dart';
import 'package:flutter_demos/demo1(List_of_product_with_hero_animation)/screen/detile/components/dots_list.dart';
import 'package:flutter_demos/demo1(List_of_product_with_hero_animation)/screen/detile/components/product_poster.dart';
import 'package:flutter_demos/demo1(List_of_product_with_hero_animation)/screen/detile/components/reservation_botton.dart';

class Body extends StatelessWidget {
 final index;
  const Body( {
  this.index,
    Key key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)
                )
              ),
              alignment: Alignment.center,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  
                    Hero(
                      tag: index,
                        child: ProductPoster(
                          img:  'assets/${index + 1}.jpg',
                        ),
                    ),
                  
                    DotList(),
                    DescriptionZone(),
                    SizedBox(height: 20,),
                    Align(
                     alignment: Alignment.bottomRight,
                    child: Container(
                    padding: EdgeInsets.symmetric(vertical:15,horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                             topLeft: Radius.circular(40),

                          )

                        ),
                        child: Text("More Detile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 15),),
                      ),
                    ),    
                  ]),
            ),
            
            SizedBox(height: 20,),
               ReservationBotton(
                 onPress: (){},
               ),
              SizedBox(height: 20,)
             
           
            

          ],
        ),
      ),
    );
  }
}

