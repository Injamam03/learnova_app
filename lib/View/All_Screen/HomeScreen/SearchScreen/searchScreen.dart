import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Utils/AppIcons/app_icon.dart';
import '../../../../Utils/AppString_text/appString_text.dart';
import '../../../Widgets/Custom_Text/custom_text.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
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
                  child: Row(
                    children: [
                      SvgPicture.asset(AppIcons.backIcon,
                      ),
                      SizedBox(width: 6,),
                      CustomText(text: AppString.back,color: Colors.black,)
                      ,
                    ],
                  )),
              SizedBox(height: 20,),

              Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(text: AppString.letsTestYourUnderstanding,fontSize: 18,color: Colors.black,)
              ),

              SizedBox(height: 31,),



              /// <=================this is my textField ======================================>
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  hintText: AppString.scared,
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
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
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff1153A0)
                        ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(AppIcons.search, width: 10,height: 10,),
                          ),
                      ),
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: 318,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.grey,width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(text: AppString.trigonometry,fontSize: 14,color: Color(0xff363636),fontWeight: FontWeight.w500,)),
                ),
              ), SizedBox(height: 10,),
              Container(
                height: 50,
                width: 318,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.grey,width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(text: AppString.vocabulary,fontSize: 14,color: Color(0xff363636),fontWeight: FontWeight.w500,)),
                ),
              ), SizedBox(height: 10,),
              Container(
                height: 50,
                width: 318,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.grey,width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(text: AppString.grammar,fontSize: 14,color: Color(0xff363636),fontWeight: FontWeight.w500,)),
                ),
              ), SizedBox(height: 10,),
              Container(
                height: 50,
                width: 318,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.grey,width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(text: AppString.trigonometry,fontSize: 14,color: Color(0xff363636),fontWeight: FontWeight.w500,)),
                ),
              ), SizedBox(height: 10,),
              Container(
                height: 50,
                width: 318,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.grey,width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(text: AppString.geography,fontSize: 14,color: Color(0xff363636),fontWeight: FontWeight.w500,)),
                ),
              ), SizedBox(height: 10,),
              Container(
                height: 50,
                width: 318,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.grey,width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(text: AppString.grammar,fontSize: 14,color: Color(0xff363636),fontWeight: FontWeight.w500,)),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
