import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/widgets/ticket_taps.dart';

import '../utils/app_style.dart';
import '../widgets/double_text.dart';
import '../widgets/icon_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are \n you looking for?",style: Styles.heedLineStyle1.copyWith(
            fontSize: AppLayout.getWidth(35),  ),),
          Gap(AppLayout.getHeight(20)),
          AppTicketTap(firstTap: 'Airline tickets', secondTap: "Hotels",),
          Gap(AppLayout.getHeight(25)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure',),
          Gap(AppLayout.getHeight(20)),
          AppIconText(icon: Icons.flight_land_rounded, text: 'Arival',),
          Gap(AppLayout.getHeight(25)),
          Container(
    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(18),horizontal: AppLayout.getWidth(18)),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
    color: Color(0XD91130CE),
    ),
    child:Center(
      child: Text(
        "Find Ticket",
        style: Styles.textStyle.copyWith(
          color: Colors.white
        ),
      ),
    )
    ),
          Gap(AppLayout.getHeight(40)),
          AppDoubleText(bigText: 'Upcomming Flights',smallText: 'View more',),
          Gap(AppLayout.getHeight(40)),

          Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width*.42,
                height: AppLayout.getHeight(420),
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                children: [
                 Container(
                   height: AppLayout.getHeight(190),
                   decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                     image: DecorationImage(
                       fit: BoxFit.cover,
                         image: AssetImage(
                       'assets/images/sets.jpg'
                     ))
                   ),
                 ),
                  Gap(AppLayout.getHeight(12)),
                  Text("20% discount on the early booking of this flight.Don\'t miss",
                  style: Styles.heedLineStyle2.copyWith(fontSize: 18),)
               ],
             ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*.44,
                        height: AppLayout.getHeight(195),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getHeight(15)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                          color: Color(0XFF3AB8B8),

                        ),
                        child:Column(
                          children: [
                            Text(
                              "Discount for survey",
                            style: Styles.heedLineStyle2.copyWith(
                              color: Colors.white,
                            ),),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey about our services and discount",
                              style: Styles.heedLineStyle2.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),),
                          ],
                        ),
                      ),
                      Positioned(child:

                      Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(22)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width:AppLayout.getWidth(18),
                            color: Color(0xFF189999),
                          ),



                        ),
                      ) ,
                        right: -35,
                        top: -30,
                      ),

                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width*.44,
                    height: AppLayout.getHeight(200),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      color: Color(0xFFEC6545),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18),
                      ),
                    ),

         child: Column(
          children: [
            Text("Take love ",style: Styles.heedLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold,),textAlign:TextAlign.center),
            Gap(AppLayout.getHeight(10)),
            RichText(text:
            TextSpan(
              children: [
                TextSpan(
                    text: "😍",
                    style: TextStyle(
                        fontSize: 22
                    )
                ),
                TextSpan(
                    text: " 🥰",
                    style: TextStyle(
                        fontSize: 35
                    )
                ),
                TextSpan(
                    text: "😘",
                    style: TextStyle(
                        fontSize: 22
                    )
                )
              ],
            ) )

          ],
        ) ,
                      ),


                ],
              ),

            ],
          ),





        ],
      ),

    );
  }
}
