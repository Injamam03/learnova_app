import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/Core/AppRoute/appRoute.dart';
import 'package:flutter_task/Utils/AppString_text/appString_text.dart';
import 'package:flutter_task/View/Widgets/CustomButton/custom_button.dart';

import 'package:flutter_task/View/Widgets/CustomRowTapBar/customRow.dart';
import 'package:flutter_task/View/Widgets/Custom_Text/custom_text.dart';
import 'package:flutter_task/View/Widgets/Custom_text_Field/custom_text_Field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Utils/AppIcons/app_icon.dart';

class Notificationscreen extends StatefulWidget {
  const Notificationscreen({super.key});

  @override
  State<Notificationscreen> createState() => _NotificationscreenState();
}

class _NotificationscreenState extends State<Notificationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 46,left:0),
                child: GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(AppIcons.backIcon,
                      ),
                      SizedBox(width: 6,),
                      CustomText(text: AppString.back,color: Colors.black,)
                      ,
                    ],
                  ),
                )),
              SizedBox(height: 20,),
        
              Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(text: AppString.letsTestYourUnderstanding,fontSize: 18,color: Colors.black,)
              ),
        
              SizedBox(height: 31,),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      AppString.vocabulary,
                      style: TextStyle(color: Color(0xff008DE7)),),
                  ),
                  Spacer(),
                  Icon(Icons.alarm_on),
                  Text("23.03"),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23,vertical: 20),
                  child: CustomText(text: AppString.myDogIsLittle),
                ),
              ),
        
              /// <=================this is my textField ======================================>
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  hintText: AppString.scared,
                  hintStyle: TextStyle(color: Colors.black, fontSize: 16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300,),
                  ),
                  suffixIcon: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: Center(
                      child: SvgPicture.asset(AppIcons.a,),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  hintText: AppString.frightening,
                  hintStyle: TextStyle(color: Colors.black, fontSize: 16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300,),
                  ),
                  suffixIcon: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: Center(
                      child: SvgPicture.asset(AppIcons.b,),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  hintText: AppString.timid,
                  hintStyle: TextStyle(color: Colors.black, fontSize: 16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300,),
                  ),
                  suffixIcon: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: Center(
                      child: SvgPicture.asset(AppIcons.c,),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  hintText: AppString.concerned,
                  hintStyle: TextStyle(color: Colors.black, fontSize: 16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300,),
                  ),
                  suffixIcon: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: Center(
                      child: SvgPicture.asset(AppIcons.d,),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
        
              CustomButton(
                  textColor: Color(0xffFFFFFF),
                  backgroundColor: Color(0xff1153A0),
                  text: AppString.next, onPressed: (){
                    Get.toNamed(AppRoute.notificationscreen2);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
