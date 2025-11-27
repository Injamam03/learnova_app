import 'package:flutter/material.dart';
import 'package:flutter_task/Core/AppRoute/appRoute.dart';
import 'package:flutter_task/Utils/AppImage/app_img.dart';
import 'package:flutter_task/Utils/AppString_text/appString_text.dart';
import 'package:flutter_task/View/Widgets/CustomRowTapBar/customRowTapBar.dart';
import 'package:flutter_task/View/Widgets/CustomTapBar/customtapBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomescreenState();
}
class _HomescreenState extends State<Homescreen> {
  final List<Map<String, dynamic>> courseList = [
    {
      'image': AppImages.studyingPic01,
      'title': AppString.vocabulary101,
      'height': 268.0,
    },
    {
      'image': AppImages.studyingPic02,
      'title': AppString.englishListening,
      'height': 209.0,
    },
    {
      'image': AppImages.studyingPic03,
      'title': AppString.trigonometryBasic,
      'height': 268.0,
    },
    {
      'image': AppImages.studyingPic04,
      'title': AppString.geometryAdvance,
      'height': 209.0,
    },
    {
      'image': AppImages.studyingPic03,
      'title': AppString.trigonometryBasic,
      'height': 268.0,
    },
    {
      'image': AppImages.studyingPic04,
      'title': AppString.geometryAdvance,
      'height': 209.0,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(top:46,left: 15,right: 15),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(AppString.learnThroughWatchingReels,style: TextStyle(fontSize: 18),),
                 GestureDetector(
                     onTap: (){
                       Get.toNamed(AppRoute.searchscreen);
                     },
                     child: Icon(Icons.search))
               ],
             ),
           ),
           SizedBox(height: 24,),
           /// <=============this is my first tap bar===================================>
           CustomTabHeader(),
           /// <=============this is my secound tap bar===================================>
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: Customtapbar()),

           /// <=================this is my gridview===============>
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:0),
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16),
               child: GridView.builder(
                 shrinkWrap: true,
                 physics: const NeverScrollableScrollPhysics(),
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   crossAxisSpacing: 10,
                   mainAxisSpacing: 12,
                   childAspectRatio: 189 / 238,
                 ),
                 itemCount: courseList.length,
                 itemBuilder: (context, index) {
                   final course = courseList[index];
                   return Stack(
                     children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(16),
                         child: Image.asset(
                           course['image'],
                           width: double.infinity,
                           height: course['height'],
                           fit: BoxFit.cover,
                         ),
                       ),
                       Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(16),
                           gradient: LinearGradient(
                             begin: Alignment.topCenter,
                             end: Alignment.bottomCenter,
                             colors: [
                               Colors.transparent,
                             ],
                           ),
                         ),
                       ),

                       Positioned(
                         bottom: 16,
                         left: 16,
                         right: 16,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                               course['title'],
                               style: const TextStyle(
                                 color: Colors.white,
                                 fontSize: 12,
                                 fontWeight: FontWeight.bold,
                               ),
                               maxLines: 2,
                               overflow: TextOverflow.ellipsis,
                             ),
                             const SizedBox(height: 8),
                             Row(
                               children: [
                                 CircleAvatar(
                                   radius: 14,
                                   backgroundImage: AssetImage(AppImages.iconPic),
                                 ),
                                 const SizedBox(width: 8),
                                 Text(
                                   AppString.jessicaRoy,
                                   style: const TextStyle(
                                     color: Colors.white,
                                     fontSize: 12,
                                     fontWeight: FontWeight.w600,
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         ),
                       ),
                     ],
                   );
                 },
               ),
             ),
           ),
         ],
       ),
     ),
    );
  }
}
