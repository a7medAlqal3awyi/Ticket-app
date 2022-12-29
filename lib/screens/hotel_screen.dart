import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_style.dart';

import '../utils/app_layout.dart';

class HotelScreen extends StatelessWidget {
 final Map<String,dynamic>hotel;
  const HotelScreen({Key? key,required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Hotel price is ${hotel['price']}");

    final size=AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: EdgeInsets.only(right: 17,top: 5),
      decoration:BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow:  [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            height: AppLayout.getHeight(180),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image:  DecorationImage(
                  fit:BoxFit.cover ,
                  image: AssetImage("assets/images/${hotel['image']}"),
                )
              ),
          ),
          SizedBox(height: 15,),
          Text("${hotel['place']}",style: Styles.heedLineStyle2.copyWith(color: Styles.kakiColor),),
          SizedBox(height: 10,),
          Text("${hotel['destination']}",style: Styles.heedLineStyle3.copyWith(color: Colors.white),),
          SizedBox(height: 10,),
          Text("\$${hotel['price']}/night",style: Styles.heedLineStyle2.copyWith(color: Styles.kakiColor),)

        ],
      ),
    );
  }
}



