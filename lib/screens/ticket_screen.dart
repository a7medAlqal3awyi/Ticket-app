import 'package:barcode/barcode.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_info.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_style.dart';
import 'package:ticket_app/widgets/ticket_taps.dart';

import '../widgets/column_layout.dart';
import '../widgets/layout_builder.dart';
import 'ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20),horizontal: AppLayout.getWidth(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Ticket",style: Styles.heedLineStyle1,),
              Gap(AppLayout.getHeight(20)),
              AppTicketTap(firstTap: 'Upcoming',secondTap: "Previous",),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding:EdgeInsets.only(left: AppLayout.getWidth(15)),
                child:TicketView(ticket:ticketList[0],isColor: false ),
              ),
              SizedBox(height: 1),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),vertical: AppLayout.getWidth(20)),
                margin:EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                            firstText: 'Flutter DB',
                        secondtText: "Passenger",
                        isColor: false,
                        alignment: CrossAxisAlignment.start),
                        AppColumnLayout(firstText: '4194 29595',
                            secondtText: "Password",
                            alignment: CrossAxisAlignment.end,
                        isColor: false,),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    AppLayoutBuilder(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                            firstText: '656595 94946',
                            secondtText: "Number of E-ticket",
                            isColor: false,
                            alignment: CrossAxisAlignment.start),
                        AppColumnLayout(firstText: 'B2SG84K4',
                          secondtText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),


                    AppLayoutBuilder(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                    "assets/images/visa.png" ,
                                scale: 20,),
                          Text(" ***5858",style: Styles.heedLineStyle3,),
                              ],
                              
                            ),
                            Gap(5),
                            Text("Payment method",style: Styles.heedLineStyle4,)
                          ],
                        ),

                        AppColumnLayout(firstText: '\$224.99',
                          secondtText: "Password",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,),

                      ],

                    ),
                    Gap(AppLayout.getHeight(20)),

                  ],
                ),
              ),
              SizedBox(height: 1),
            /*
            * Bar Code
            * */
              Container(

                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft:Radius.circular(AppLayout.getHeight(21)) ,
                    bottomRight: Radius.circular(AppLayout.getHeight(21))

                  )
                ),
                margin: EdgeInsets.only(left:AppLayout.getHeight(15),right: AppLayout.getHeight(15) ),
                padding:EdgeInsets.only(top: AppLayout.getHeight(20),bottom: AppLayout.getHeight(20)) ,

                child: Container(
                  padding: EdgeInsets.symmetric( horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                    child:BarcodeWidget(
                      barcode:Barcode.code93(),
                      color: Styles.textColor,
                      data: '',
                      drawText: false,
                      width: double.infinity,
                      height: 70,
                    )
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),

              Container(
                padding:EdgeInsets.only(left: AppLayout.getWidth(15)),
                child:TicketView(ticket:ticketList[0], ),
              ),
            ],
          ),
          Positioned(
            top: AppLayout.getHeight(256),
            left: AppLayout.getHeight(27),
            child: Container(
              padding: EdgeInsets.all(3),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 border: Border.all(color: Styles.textColor,width: 2),

               ),
            ),
          ),
          Positioned(
            top: AppLayout.getHeight(256),
            right: AppLayout.getHeight(27),
            child: Container(
              padding: EdgeInsets.all(3),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
