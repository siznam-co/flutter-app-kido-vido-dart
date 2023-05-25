import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_quiz/Learning/Learn_Abc/abc_learning_type.dart';
import 'package:new_quiz/home.dart';
import 'package:page_transition/page_transition.dart';

import 'Learn_counting/counting_learning.dart';

class Learning_types extends StatefulWidget {
  const Learning_types({Key? key}) : super(key: key);

  @override
  State<Learning_types> createState() => _Learning_typesState();
}

class _Learning_typesState extends State<Learning_types> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("images/bg.png"), fit: BoxFit.fill),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 8.r,
                      blurRadius: 6.r,
                      offset: const Offset(0, 4),
                    )
                  ])),
          Column(children: [
            ///----------------back_button----------------///
            Padding(
              padding: EdgeInsets.only(left: 15.w, top: 15.h),
              child: Container(
                height: 100,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        child: Image.asset('images/buttons/left_button.png'),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                        height: 100.h,
                        //width: 40,
                        child: SvgPicture.asset('images/learn2.svg')),
                  ],
                ),
              ),
            ),

            ///----------------Sized_Box----------------///
            SizedBox(height: 8.h),

            ///----------------Box----------------///
            Padding(
                padding: EdgeInsets.only(left: 14.w),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        width: 206.w,
                        height: 500.h,
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 1,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(children: [
                                ///----------------box_1----------------///
                                RotationTransition(
                                  turns:
                                      new AlwaysStoppedAnimation(360 / 370),
                                  child: ListTile(
                                    subtitle: Container(
                                      height: 120.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.r),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.4),
                                            spreadRadius: 2.r,
                                            blurRadius: 4.r,
                                            offset: const Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          'images/abcd.png',
                                          fit: BoxFit.contain,
                                          //    fit: BoxFit.fill
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          alignment: Alignment.bottomCenter,
                                          duration:
                                              Duration(milliseconds: 200),
                                          child: Abc_learning_type(),
                                        ),
                                      );
                                    },
                                  ),
                                ),

                                ///----------------SizedBox----------------///
                                SizedBox(height: 120.h),

                                ///----------------box_2----------------///
                                RotationTransition(
                                    turns:
                                        new AlwaysStoppedAnimation(360 / 370),
                                    child: ListTile(
                                        subtitle: Container(
                                          height: 120.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30.r),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.4),
                                                  spreadRadius: 2.r,
                                                  blurRadius: 4.r,
                                                  offset: const Offset(0, 2),
                                                ),
                                              ]),
                                          child: Image.asset(
                                            'images/123.png',
                                            fit: BoxFit.fill,
                                            //    fit: BoxFit.fill
                                          ),
                                        ),
                                        tileColor: Colors.grey,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              PageTransition(
                                                  type:
                                                      PageTransitionType.fade,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  duration: Duration(
                                                      milliseconds: 200),
                                                  child:
                                                      Counting_learning()));
                                        }))
                              ]);
                            }))))
          ]),
          Padding(
            padding: EdgeInsets.only(top: 150.h),
            child: Align(
              alignment: Alignment.topRight,
              child: Column(
                children: [
                  ///---------------teacher1---------------///
                  Container(
                    height: 250.h,
                    width: 210.w,
                    child: Image.asset('images/male_teacher_1.png'),
                  ),

                  ///---------------SizedBox---------------///
                  SizedBox(height: 10.h),

                  ///---------------teacher2---------------///
                  Container(
                    height: 200.h,
                    width: 210.w,
                    child: Image.asset('images/male_teacher_2.png'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
