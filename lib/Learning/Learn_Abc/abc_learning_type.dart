import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_quiz/Learning/learning_types.dart';
import 'package:page_transition/page_transition.dart';

import 'abc_phonicsVideo.dart';
import 'abc_pronounce.dart';
import 'abc_with_shapes.dart';

class Abc_learning_type extends StatefulWidget {
  const Abc_learning_type({Key? key}) : super(key: key);

  @override
  State<Abc_learning_type> createState() => _Abc_learning_typeState();
}

class _Abc_learning_typeState extends State<Abc_learning_type> {
  /*Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.white,
          shape: const Border(),
          title: SizedBox(
            //height: 180,
            width: 70.w,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Do you want to exit app',
                  style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text(
                'No',
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text("Yes", style: TextStyle(fontSize: 20.sp)),
            ),
          ],
        ),
      );*/
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return /*WillPopScope(
      onWillPop: () async {
        final shouldPop = await showWarning(context);
        return shouldPop ?? false;
      },
      child: */
        Scaffold(
          body: Container(
            height: size.height,
            width: size.width,
            child: Stack(
          children: [
            ///------------------background_Image------------------///
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/bg.png"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 8.r,
                    blurRadius: 6.r,
                    offset: const Offset(
                      0,
                      4,
                    ),
                  ),
                ],
              ),
            ),

            ///------------------box------------------///
            Column(
              children: [
                ///-----------back_button-----------///
                Padding(
                  padding: EdgeInsets.only(left: 15.w, top: 15.h),
                  child: Container(
                    height: 100.h,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Learning_types(),
                              ),
                            );
                          },
                          child: Container(
                            height: 40.h,
                            width: 40.w,
                            child: Image.asset('images/buttons/left_button.png'),
                          ),
                        ),
                        /*SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 100,
                          //width: 40,
                          child: Image.asset('images/learn.png'),
                        ),*/
                      ],
                    ),
                  ),
                ),

                ///-----------Sized_box-----------///
                SizedBox( height: 5.h ),
                // SizedBox( height: 20.h ),

                ///-----------box-----------///
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  // padding: EdgeInsets.only(left: 14.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 206.w,
                      height: 500.h,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              ///-----------box1-----------///
                              RotationTransition(
                                turns: new AlwaysStoppedAnimation(360 / 370),
                                child: ListTile(
                                  subtitle: Container(
                                    height: 120.h,
                                    // height: 120.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.r),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.4),
                                          spreadRadius: 2.r,
                                          blurRadius: 4.r,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.r),
                                          child: Image.asset(
                                            'images/abcd.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Text(
                                          'Pronounce',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.sp,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.bottomToTop,
                                        alignment: Alignment.bottomCenter,
                                        duration: Duration(milliseconds: 300),
                                        child: Abc_pronounce(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              // SizedBox(height: 107.h),
                              SizedBox(height: 35.h),

                              ///-----------box2-----------///
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(360 / 370),
                                child: ListTile(
                                  subtitle: Container(
                                    height: 120.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.r),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.4),
                                          spreadRadius: 2.r,
                                          blurRadius: 4.r,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.r),
                                          child: Image.asset(
                                            'images/abcd.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Text('Play Phonics',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp,
                                                color: Colors.black))
                                      ],
                                    ),
                                  ),
                                  tileColor: Colors.grey,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.bottomToTop,
                                        alignment: Alignment.bottomCenter,
                                        duration: Duration(milliseconds: 300),
                                        child: VideoApp(),
                                        // child: Abc_with_shapes(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 35.h),
                              // SizedBox(height: 107.h),

                              ///-----------box3-----------///
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(360 / 370),
                                child: ListTile(
                                  subtitle: Container(
                                    height: 120.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.r),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.4),
                                          spreadRadius: 2.r,
                                          blurRadius: 4.r,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.r),
                                          child: Image.asset(
                                            'images/abcd.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Text('Shapes',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp,
                                                color: Colors.black))
                                      ],
                                    ),
                                  ),
                                  tileColor: Colors.grey,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.bottomToTop,
                                        alignment: Alignment.bottomCenter,
                                        duration: Duration(milliseconds: 300),
                                        child: Abc_with_shapes(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),

            ///------------------teacher------------------///
            Padding(
              padding: EdgeInsets.only(top: 90.h,bottom: 50.h),
              // padding: EdgeInsets.only(top: 160.h),
              child: Align(
                alignment: Alignment.center,
                // alignment: Alignment.topRight,
                child: Column(
                  children: [
                    ///---------------teacher1---------------///
                    Padding(
                      padding: EdgeInsets.only(left: 120.w),
                      child: Container(
                        // height: 250.h,
                        // width: 210.w,
                        height: 205.h,
                        width: 170.w,
                      child: Image.asset('images/male_teacher_1.png'),
                      ),
                    ),

                    ///---------------SizedBox---------------///
                    SizedBox(height: 10.h),

                    ///---------------teacher2---------------///
                    Padding(
                      padding: EdgeInsets.only(left: 120.w),
                      child: Container(
                        // height: 217.h,
                        // width: 210.w,
                        height: 160.h,
                        width: 170.w,
                        child: Image.asset('images/male_teacher_2.png'),
                      ),
                    ),
                    SizedBox(height: 10.h),

                    ///---------------teacher2---------------///
                    Padding(
                      padding: EdgeInsets.only(left: 120.w),
                      child: Container(
                        // height: 217.h,
                        height: 160.h,
                        // width: 210.w,
                        width: 170.w,
                        child: SvgPicture.asset('images/teacher_3.svg'),
                      ),
                    ),
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