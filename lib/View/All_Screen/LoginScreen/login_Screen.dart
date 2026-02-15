import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/Core/AppRoute/appRoute.dart';
import 'package:flutter_task/Utils/AppIcons/app_icon.dart';
import 'package:flutter_task/Utils/AppImage/app_img.dart';
import 'package:flutter_task/Utils/AppString_text/appString_text.dart';
import 'package:flutter_task/View/All_Screen/CreateAccount/create_Account.dart';
import 'package:flutter_task/View/Widgets/CustomButton/custom_button.dart';
import 'package:flutter_task/View/Widgets/Custom_Text/custom_text.dart';
import 'package:flutter_task/View/Widgets/Custom_text_Field/custom_text_Field.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(AppImages.cardPic,width: double.maxFinite,),
              SizedBox(height: 15,),
              Center(
                child: Text(AppString.logIn,style: TextStyle(
                    fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xff1F1F1F)
                ),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 104),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppString.student),
                    SizedBox(width: 50,),
                    Text(AppString.teacher),
                  ],
                ),
              ),
              ///<================== this is my textField code ===================================================>>>>>>
          
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppString.email,style: TextStyle(color: Color(0xff737373)),),
                    CustomTextField(
                      hint:"JohnDoe@gmail.com",
                    )
                  ],
                ),
              ),SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppString.password,style: TextStyle(color: Color(0xff737373)),),
                    CustomTextField(
                      hint:AppString.password,
                      isPassword: true,
                    )
                  ],
                ),
              ),SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoute.homeScreen);
                        },
                        child: CustomText(text: AppString.forgotPassword,color: Color(0xff008DE7),))),
              ),
              SizedBox(height: 36,),
          
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton(
                textColor: Color(0xffFFFFFF),
                  backgroundColor: Color(0xff1153A0),
                  text: AppString.logIn, onPressed: (){
                  Get.toNamed(AppRoute.homeScreen);
                }),
              ),
              SizedBox(height: 10,),
              //================ this is my customButton ============================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton(
                    iconWidget: SvgPicture.asset(AppIcons.google),
                    textColor: Colors.black,
                    backgroundColor: Colors.white,
                    text: AppString.loginWithGoogle,
                    onPressed: (){}),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: AppString.newToLearnova,
                    color: Color(0xff1F1F1F),),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.createAcccount);
                    },
                    child: CustomText(text: AppString.createanAccount,
                      color: Color(0xff008DE7),
          
                    ),
                  )
                ],
              )
          
            ],
          
          ),
        )
    );
  }
}
