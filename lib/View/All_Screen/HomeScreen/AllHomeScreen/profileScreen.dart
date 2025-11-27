import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/Core/AppRoute/appRoute.dart';
import 'package:flutter_task/Utils/AppImage/app_img.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Utils/AppIcons/app_icon.dart';
import '../../../../Utils/AppString_text/appString_text.dart';
import '../../../Widgets/Custom_Text/custom_text.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  bool iscolor=true;
  bool color=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 46,left:0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(AppIcons.backIcon,
                        ),
                        SizedBox(width: 6,),
                        CustomText(text: AppString.back,color: Colors.black,),
                        SizedBox(width: 238,),
                        GestureDetector(
                            onTap: (){
                              Get.toNamed(AppRoute.searchscreen);
                            },
                            child: SvgPicture.asset(AppIcons.settingIcon))


                      ],
                    )),
              ],
            ),
            Center(
              child: Column(
                children: [
                   Image.asset(AppImages.iconPic2),
                   Text(AppString.jessicaRoy,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height: 5,),
                  Text(AppString.joinedSinceJun2024,style: TextStyle(color: Color(0xff545454)),)
                ],
              ),
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('05',style:TextStyle(fontWeight: FontWeight.bold),),
                    Text(AppString.inProgress,style: TextStyle(fontSize: 12, color: Color(0xff545454)),),
                  ],
                ),Column(
                  children: [
                    Text('01',style:TextStyle(fontWeight: FontWeight.bold),),
                    Text(AppString.completed,style: TextStyle(fontSize: 12, color: Color(0xff545454)),),
                  ],
                ),Column(
                  children: [
                    Text('50',style:TextStyle(fontWeight: FontWeight.bold),),
                    Text(AppString.following,style: TextStyle(fontSize: 12, color: Color(0xff545454)),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30,),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(AppString.myCourses,style: TextStyle(fontSize:14,fontWeight: FontWeight.bold ),)
            ),
            /// <========================this is my courses containar ==============================>>>>>>>>>>>>>>>>>
          SizedBox(height: 25,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical:20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppString.englishTenses,style: TextStyle(fontSize:16,fontWeight: FontWeight.bold ),),
                      Text(AppString.minsAgo32,style: TextStyle(fontSize: 12, color: Color(0xff545454)),)
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(AppString.levelIntermediate)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(AppImages.iconPic2,width: 40,height: 40,),
                      Text(AppString.denisaOzel,)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            iscolor=!iscolor;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: iscolor?null:Border.all(color: Color(0xff023F86)),
                            color: iscolor?Color(0xff008DE7):Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20,vertical: 11),
                            child: Text(AppString.getBackToIt,style: TextStyle(color: iscolor?Colors.white:Color(0xff023F86)),),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            iscolor=! iscolor;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: iscolor?Border.all(color: Color(0xff023F86)):null,
                              color: iscolor?Colors.white:Color(0xff008DE7),
                              borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 11),
                            child: Text(AppString.courseDetails,style: TextStyle(color: iscolor?Color(0xff023F86):Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black)],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical:20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppString.englishTenses,style: TextStyle(fontSize:16,fontWeight: FontWeight.bold ),),
                      Text(AppString.minsAgo32,style: TextStyle(fontSize: 12, color: Color(0xff545454)),)
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(AppString.levelIntermediate)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(AppImages.iconPic2,width: 40,height: 40,),
                      Text(AppString.denisaOzel,)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            color=!color;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: color?null:Border.all(color: Color(0xff023F86)),
                            color: color?Color(0xff008DE7):Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20,vertical: 11),
                            child: Text(AppString.getBackToIt,style: TextStyle(color: color?Colors.white:Color(0xff023F86)),),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            color=! color;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: color?Border.all(color: Color(0xff023F86)):null,
                              color: color?Colors.white:Color(0xff008DE7),
                              borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 11),
                            child: Text(AppString.courseDetails,style: TextStyle(color: color?Color(0xff023F86):Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
