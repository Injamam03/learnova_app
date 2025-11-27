import 'package:flutter/material.dart';

import '../../../Utils/AppString_text/appString_text.dart';

class Customtapbar extends StatelessWidget {
  const Customtapbar({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xffE5F5FF),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21,vertical: 10),
              child: Text(AppString.all),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xffFFFFFF),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33,vertical: 10),
              child: Text(AppString.chinese),
            ),
          ), Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xffFFFFFF),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23,vertical: 10),
              child: Text(AppString.english),
            ),
          ), Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xffFFFFFF),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23,vertical: 10),
              child: Text(AppString.maths),
            ),
          ),Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xffFFFFFF),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23,vertical: 10),
              child: Text(AppString.chemistry),
            ),
          ),


        ],
      );
  }
}
