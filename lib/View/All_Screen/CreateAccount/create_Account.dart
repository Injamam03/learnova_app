import 'package:flutter/material.dart';
import 'package:flutter_task/Core/AppRoute/appRoute.dart';
import 'package:flutter_task/Utils/AppImage/app_img.dart';
import 'package:flutter_task/Utils/AppString_text/appString_text.dart';
import 'package:flutter_task/View/Widgets/CustomButton/custom_button.dart';
import 'package:flutter_task/View/Widgets/CustomDropDown/customdropDown01.dart';
import 'package:flutter_task/View/Widgets/CustomDropDown/dropdwonprimary02.dart';
import 'package:flutter_task/View/Widgets/Custom_Text/custom_text.dart';
import 'package:flutter_task/View/Widgets/Custom_text_Field/custom_text_Field.dart';
import 'package:get/get.dart';


class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppImages.cardPic,width: double.maxFinite,),
            SizedBox(height: 15,),
            Center(
              child: Text(AppString.createAccount,style: TextStyle(
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
                  Text(AppString.name,style: TextStyle(color: Color(0xff737373)),),
                  CustomTextField(
                    hint:"Jogn Doe",
                  )
                ],
              ),
            ),
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppString.confirmPassword,style: TextStyle(color: Color(0xff737373)),),
                  CustomTextField(
                    hint: AppString.confirmPassword,
                    isPassword: true,
                  ),
                ],
              ),

            ),
            SizedBox(height: 36,),
        ///<==============this is my create AccountButton and popup show with show dialog===================>
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                backgroundColor: Color(0xff1153A0),
                  textColor: Color(0xffFFFFFF),
                  text: AppString.createAccount,
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return _successPopup();
                        },
                        );
                  }),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: AppString.alreadyHaveAnAccount),
                SizedBox(width: 5,),
                GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.loginScreen);
                    },
                    child: CustomText(text: AppString.logIn,color: Color(0xff008DE7),))
              ],
            )

          ],

        ),
      )
    );
  }
}

Widget _successPopup() {
  return SingleChildScrollView(
    child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        content: SizedBox(
          width: 200,
          child: Column(
            children: [
              CustomText(
                text: AppString.personalizingCourse,color: Colors.black,fontSize: 17,),
    
    
              SizedBox(height: 5,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(AppString.currentSchool,style: TextStyle( color: Color(0xff737373),),)),
              SizedBox(height: 5,),
              CustomTextField(hint: AppString.diocesanBoysSchool),
              SizedBox(height: 5,),
    
              ///========= text from filt===========
              ///
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(AppString.electiveSubject,style: TextStyle( color: Color(0xff737373),),)),
              SizedBox(height: 5,),
              CustomTextField(hint: AppString.diocesanBoysSchool,),
              SizedBox(height: 5,),
    
    
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(AppString.currentGrade,style: TextStyle( color: Color(0xff737373),),)),
              SizedBox(height: 5,),
    
              Dropdwonprimary(),
              SizedBox(height: 5,),
    
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(AppString.howDidYouHearAboutUs,style: TextStyle( color: Color(0xff737373),),)),
              SizedBox(height: 5,),
    
              CustomDropdown(),
              SizedBox(height: 5,),
    
    
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton(
                    textColor: Color(0xffFFFFFF),
                    backgroundColor: Color(0xff1153A0),
                    text: AppString.getStarted, onPressed: (){
                  Get.toNamed(AppRoute.homeScreen);
                }),
              ),
    
    
            ],
          ),
        )
    ),
  );
}
// ---------------------------------------------------
