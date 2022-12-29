import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_style.dart';
import 'package:ticket_app/widgets/column_layout.dart';
import 'package:ticket_app/widgets/layout_builder.dart';
import 'package:ticket_app/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic>ticket;
  final bool? isColor;

  const TicketView({Key? key,required this.ticket, this.isColor }) : super(key: key);

  @override
  Widget build(BuildContext context) {
final size=AppLayout.getSize(context);
    return SizedBox(
    width: size.width*0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true ? 177:179 ),
      child: Container(

        margin:  EdgeInsets.only(right: AppLayout.getHeight(16),),
        child: Column(
          children: [
            /*
            showing the blue part of the card
            */
            Container(
              decoration:  BoxDecoration(

                color:isColor ==null ? const Color(0xFF526799):Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(AppLayout.getHeight(21)),
                    topLeft: Radius.circular(AppLayout.getHeight(21),)),
              ),
              padding:  EdgeInsets.all(AppLayout.getHeight(16),),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['form']['code'],
                        style: isColor==null? Styles.heedLineStyle3.copyWith(color: Colors.white):Styles.heedLineStyle3,),
                       Expanded(child: Container()),
                       ThickContainer(isColor: true,),
                      Expanded(child:
                      Stack(
                        children: [
                          SizedBox(
                          height: AppLayout.getHeight(24),

                          child: const AppLayoutBuilder(sections: 6,width: 3,isColor: true,),
                        ),
                          /*
                          / Plane
                           */
                          Center(
                            child: Transform.rotate(angle: 1.5,child: Icon(Icons.airplanemode_active_rounded,
                              color: isColor==null? Colors.white:Color(0xFFA8CCF7),),
                            ),
                          ),
                        ],
                      )),
                      ThickContainer(isColor: true,),

                      Expanded(child: Container()),
                      Text(ticket['to']['code'],style: isColor==null?Styles.heedLineStyle3.copyWith(color: Colors.white):Styles.heedLineStyle3,)
                    ],
                  ),
                  const SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(85),
                        child:
                        Text(ticket['form']['name'],style:isColor==null? Styles.heedLineStyle4.copyWith(color: Colors.white):Styles.heedLineStyle4
                          ,),
                      ),
                      Text(ticket['departure_time'],style: isColor==null?Styles.heedLineStyle4.copyWith(color: Colors.white,):Styles.heedLineStyle4,),
                      SizedBox(
                        width:AppLayout.getWidth(100),
                        child:
                        Text(ticket['to']['name'],textAlign:TextAlign.end, style:isColor==null?Styles.heedLineStyle4.copyWith(color: Colors.white):Styles.heedLineStyle4,),
                      )
                    ],
                  )
                ],
              ),
            ),

            //*************************************
            /*
            showing the orange part of the card
            */
            Container(
              color: isColor==null? Styles.orangeColor:Colors.white,
              child: Row(
                children:  [
                  SizedBox(
                    width: AppLayout.getWidth(10),
                    height: AppLayout.getHeight(20),
                    child: DecoratedBox(
                       decoration: BoxDecoration(
                       color:  isColor==null? Colors.white:Colors.grey.shade300,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context,BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate((constraints.constrainWidth()/16).floor(), (index) => SizedBox(
                          height: 1,
                          width: 5,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: isColor==null? Colors.white:Colors.grey.shade300,
                            ),
                          ),
                        )),);
                      }
                    ),
                  )

                  ),
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor==null? Colors.white:Colors.grey.shade300,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                      ),
                    ),
                  ),
              ],),
            ),
            Container(
             padding: EdgeInsets.only(
               top: 10,left: 16,right: 16,bottom: 16,
             ),
              decoration: BoxDecoration(
                color: isColor ==null? Styles.orangeColor:Colors.white,
                  borderRadius:BorderRadius.only(
                  bottomRight:Radius.circular(isColor==null? 21:0 ),
                  bottomLeft:Radius.circular(isColor==null? 21:0),
                )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firstText: ticket['date'],
                          secondtText: "Date",
                          alignment: CrossAxisAlignment.start,
                     isColor: isColor,
                        ),

                      AppColumnLayout(
                        firstText: ticket['departure_time'],
                        secondtText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),

                      AppColumnLayout(
                        firstText: ticket['number'].toString(),
                        secondtText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
   
    );
  }
}
