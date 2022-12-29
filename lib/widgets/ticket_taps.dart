import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTap extends StatelessWidget {
  final String firstTap;
  final String secondTap;

  const AppTicketTap({Key? key, required this.firstTap, required this.secondTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        decoration: BoxDecoration(
            color: Color(0xFFF4F6FD),
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50))
        ),
        child: Row(
          children: [
            /*
                   Airline ticket
                   * */
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(left:Radius.circular(AppLayout.getHeight(50)) )
              ),
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              child: Center(child: Text(firstTap)),
              width: size.width*.44,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.transparent ,
                  borderRadius: BorderRadius.horizontal(right:Radius.circular(AppLayout.getHeight(50)) )
              ),
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              child: Center(child: Text(secondTap)),
              width: size.width*.44,
            )
          ],
        ),
      ),
    );
  }
}
