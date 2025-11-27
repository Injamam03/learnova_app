import 'package:flutter/material.dart';
import 'package:flutter_task/Utils/AppIcons/app_icon.dart';
import 'package:flutter_task/Utils/AppImage/app_img.dart';
import 'package:flutter_task/Utils/AppString_text/appString_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Youtubescreen extends StatefulWidget {
  const Youtubescreen({super.key});

  @override
  State<Youtubescreen> createState() => _YoutubescreenState();
}

class _YoutubescreenState extends State<Youtubescreen> {
  bool isfollowed = true ;
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.reelPic,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(AppImages.iconPic),
                    Text(
                      AppString.jessicaRoy,
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    ///<============this is my follow button================================================>

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:4,vertical: 6),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isfollowed=!isfollowed;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: isfollowed?null:Border.all(color: Colors.black,width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: isfollowed?Colors.white:null,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 6),
                            child: isfollowed?Text(AppString.follow):Text(AppString.followed),
                          ),
                        ),
                      ),
                    ),
                    ///<============this is my like Icon================================================>
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:6,vertical: 6),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isliked=!isliked;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: isliked?Colors.white:null,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:6,vertical: 6),
                            child: isliked?SvgPicture.asset(AppIcons.likeIcon,):Icon(Icons.favorite,color: Colors.white,),
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
                Text(
                  AppString.startLearningVocabularyToday,
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height:5),
                Text(
                  AppString.soWhatIsTheNecessary,
                  style: TextStyle(color: Colors.white, fontSize:16),
                ),
                SizedBox(height: 16),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
