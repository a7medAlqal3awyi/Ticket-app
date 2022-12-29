import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_style.dart';
import 'package:ticket_app/widgets/column_layout.dart';
import 'package:ticket_app/widgets/layout_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20),horizontal: AppLayout.getHeight(20)),
        children: [
          Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppLayout.getHeight(86),
                height: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: DecorationImage(
                    image:AssetImage(
                      "assets/images/plane.png"
                    ),
                  )
                ),
              ),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Ticket",style: Styles.heedLineStyle1,),
                  Gap(10),
                  Text("New-York",style:TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.grey
                  ),),
                  Gap(8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3),vertical: AppLayout.getHeight(3)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFFFEF4F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled,
                          size: 15,
                          color: Colors.white,),
                        ),
                        Gap(5),
                        Text("Primum status",style: TextStyle(
                          color: Color(0xFF526799),
                          fontWeight: FontWeight.w600
                        ),),

                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                onTap: (){
                  print("you are tapped");
                },
                child: Column(
                  children: [
                    Text("Edit",style: Styles.textStyle.copyWith(fontWeight: FontWeight.w300,
                    color: Styles.primaryColor
                    ,),)
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color:Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                    color: Styles.primaryColor,

                    borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration:  BoxDecoration(
                      color: Colors.transparent,

                      shape: BoxShape.circle,
                    border: Border.all(width: 18,color: Color(0xFF264CD2))
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  CircleAvatar(

                    child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                    color: Styles.primaryColor,size: 27,),
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                  ),
                     Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You\'v got a new award",
                        style: Styles.heedLineStyle2.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white
                        ),),
                        Text("You have 95 flight in a year",
                          style: Styles.heedLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white.withOpacity(.9)
                          ),),
                      ],
                    ),
                ],),
              )

            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text("Accumulated miles",style: Styles.heedLineStyle2,),
          Gap(AppLayout.getHeight(25)),

          Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                )
              ]
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(25)),
                const Text("192802",
                style:TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 45,
                ) ,),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued",style: Styles.heedLineStyle4.copyWith(fontSize: 16),),
                    Text("31 May 2022",style: Styles.heedLineStyle4.copyWith(fontSize: 16),)
                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Divider(color: Colors.grey.shade300,),
                Gap(AppLayout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                    AppColumnLayout(
                      firstText: "49 949",
                      secondtText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "Airline CO",
                      secondtText: "Received form",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const AppLayoutBuilder(sections: 12,isColor:false),
                Gap(AppLayout.getHeight(12)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                    AppColumnLayout(
                      firstText: "64",
                      secondtText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "McDonal/'s",
                      secondtText: "Miles",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),


                  ],
                ),

                const AppLayoutBuilder(sections: 12,isColor:false),
                Gap(AppLayout.getHeight(12)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "97 611",
                      secondtText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "DBestach",
                      secondtText: "Received form",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),


                  ],
                ),
              ],
            ),



          ),
          Gap(AppLayout.getHeight(25)),

          InkWell(

            onTap: ()=> print("You are tapped"),
            child: Center(
              child: Text("How to get more miles",
              style: Styles.textStyle.copyWith(
                color: Styles.primaryColor,
                fontWeight: FontWeight.w500

              ),),
            ),
          )



        ],
      ),
    );
  }
}
