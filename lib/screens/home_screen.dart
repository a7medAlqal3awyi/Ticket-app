import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ticket_app/screens/hotel_screen.dart';
import 'package:ticket_app/screens/ticket_view.dart';
import 'package:ticket_app/utils/app_info.dart';
import 'package:ticket_app/utils/app_style.dart';
import 'package:ticket_app/widgets/double_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 16,left: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("good morning",style: Styles.heedLineStyle3,),
                        SizedBox(height: 5,),
                        Text("Book tickets",style: Styles.heedLineStyle1,),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/plane.png'
                          ),
                          fit: BoxFit.cover,

                        )
                      ),
                    )
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),

                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(
                    children: [
                    const Icon(Icons.search,
                    color: Color(0xFFBFC205),),
                      Text("Search",style: Styles.heedLineStyle4,)
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                AppDoubleText(bigText: 'Upcomming Flights',smallText: 'View more',)
              ],
            ),
          ),
          SizedBox(height: 15,),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),

            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList()
              ,
            ),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Hotels",style: Styles.heedLineStyle2,),
                InkWell(
                    onTap: (){
                      print("you tapped");
                    },
                    child: Text("View more",style: Styles.textStyle.copyWith(color: primary),))
              ],
            ),
          ),
          SizedBox(height: 15,),

          SingleChildScrollView(
            physics: BouncingScrollPhysics(),

            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
              child: Row(
                children: hotilList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList(),
              ),
          )

        ],
      ),
    );
  }
}
