import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_quiz/Quiz/quiz.dart';
import 'package:new_quiz/home.dart';
import 'package:page_transition/page_transition.dart';

import '../model/lis_questions.dart';

class Quiz_type extends StatefulWidget {
  const Quiz_type({Key? key}) : super(key: key);

  @override
  State<Quiz_type> createState() => _Quiz_typeState();
}

class _Quiz_typeState extends State<Quiz_type> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            width: size.width,
            height: size.height,
            child: Stack(children: [
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/bg.png"),
                          fit: BoxFit.cover))),
              Column(children: [
                SizedBox(height: 7.h),
                Row(children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Padding(
                          padding: EdgeInsets.only(top: 25.h, left: 20.w),
                          child: Image.asset('images/buttons/left_button.png',
                              height: 40.h, width: 40.w))),
                  SizedBox(width: size.width * 0.13),
                  Center(
                      child: RotationTransition(
                          turns: AlwaysStoppedAnimation(-4.5 / 360),
                          child: SvgPicture.asset('images/quizYellow.svg',
                              fit: BoxFit.fill, height: 112.h, width: 201.w)))
                ])
              ]),
              Positioned(
                  top: size.height * 0.17,
                  left: size.width * 0.52,
                  child: RotationTransition(
                      turns: AlwaysStoppedAnimation(8 / 360),
                      child: Align(
                          alignment: FractionalOffset(0.94, 0.2),
                          // alignment: Alignment(0.8, 0),
                          child: InkWell(
                              onTap: () {
                                score = 0;
                                quiz_num = 1;
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        alignment: Alignment.bottomCenter,
                                        duration: Duration(milliseconds: 300),
                                        child: Quiz(
                                            questions:
                                                allQuizes[0].questions!)));
                              },
                              child: Stack(children: [
                                Container(
                                    height: 160.h,
                                    width: 160.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 5.r),
                                        shape: BoxShape.circle,
                                        color: Colors.yellow[100],
                                        image: DecorationImage(
                                            fit: BoxFit.fitWidth,
                                            image: AssetImage(
                                                allQuizes[0].image!)),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.4),
                                              spreadRadius: 2.r,
                                              blurRadius: 4.r,
                                              offset: Offset(0, 2))
                                        ])),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 140.h, left: 30.w),
                                    child: Container(
                                        height: 30.h,
                                        width: 100.w,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  spreadRadius: 2.r,
                                                  blurRadius: 5.r,
                                                  offset: Offset(1, 3))
                                            ],
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10.r)),
                                        child: Center(
                                            child: Text("Fruits",
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    color: Color(0xffF20B0B),
                                                    fontWeight:
                                                        FontWeight.bold)))))
                              ]))))),
              Positioned(
                  top: size.height * 0.35,
                  left: size.width * 0.03,
                  child: RotationTransition(
                      turns: AlwaysStoppedAnimation(-5 / 360),
                      child: Align(
                          // alignment: FractionalOffset(0.06, 0.5),
                          alignment: Alignment(-0.8, 0),
                          child: InkWell(
                              onTap: () {
                                score = 0;
                                quiz_num = 1;
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        alignment: Alignment.bottomCenter,
                                        duration: Duration(milliseconds: 300),
                                        child: Quiz(
                                            questions:
                                                allQuizes[2].questions!)));
                              },
                              child: Stack(children: [
                                Container(
                                    height: 160.h,
                                    width: 160.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 5.r),
                                        shape: BoxShape.circle,
                                        color: Colors.greenAccent[100],
                                        image: DecorationImage(
                                            image: AssetImage(
                                                allQuizes[2].image!)),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.4),
                                              spreadRadius: 2.r,
                                              blurRadius: 4.r,
                                              offset: Offset(0, 2))
                                        ])),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 140.h, left: 24.w),
                                    child: Container(
                                        height: 30.h,
                                        width: 123.w,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                spreadRadius: 2.r,
                                                blurRadius: 5.r,
                                                offset: Offset(1, 3))
                                          ],
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                        ),
                                        child: Center(
                                            child: Text(
                                                textAlign: TextAlign.center,
                                                "Vegetables",
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    color: Color(0xff05A200),
                                                    fontWeight:
                                                        FontWeight.bold)))))
                              ]))))),
              Positioned(
                  top: size.height * 0.5,
                  left: size.width * 0.52,
                  child: RotationTransition(
                      turns: AlwaysStoppedAnimation(5 / 360),
                      child: Align(
                          //alignment: FractionalOffset(0.94, 0.2),
                          alignment: Alignment(0.9, 1),
                          child: InkWell(
                              onTap: () {
                                score = 0;
                                quiz_num = 1;
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        alignment: Alignment.bottomCenter,
                                        // duration: Duration(milliseconds: 500),
                                        duration: Duration(milliseconds: 300),
                                        child: Quiz(questions: allQuizes[3].questions!)
                                    )
                                );
                              },
                              child: Stack(children: [
                                Container(
                                    height: 160.h,
                                    width: 160.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 5.r),
                                        shape: BoxShape.circle,
                                        color: Colors.yellowAccent[100],
                                        image: DecorationImage(
                                            image: AssetImage(
                                                allQuizes[3].image!)),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.4),
                                              spreadRadius: 2.r,
                                              blurRadius: 4.r,
                                              offset: Offset(0, 2))
                                        ])),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 140.h, left: 18.w),
                                    child: Container(
                                        height: 30.h,
                                        width: 120.w,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  spreadRadius: 2.r,
                                                  blurRadius: 5.r,
                                                  offset: Offset(1, 3))
                                            ],
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10.r)),
                                        child: Center(
                                            child: Text(
                                                textAlign: TextAlign.center,
                                                "Body Parts",
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    color: Color(0xff453DBB),
                                                    fontWeight:
                                                        FontWeight.bold)))))
                              ]))))),
              Positioned(
                  top: size.height * 0.69,
                  left: size.width * 0.03,
                  child: RotationTransition(
                      turns: AlwaysStoppedAnimation(-5 / 360),
                      child: Align(
                          //alignment: FractionalOffset(0.06, 0.3),
                          alignment: Alignment(-0.8, 0),
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 10.h),
                              child: InkWell(
                                  onTap: () {
                                    score = 0;
                                    quiz_num = 1;
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            type: PageTransitionType.fade,
                                            alignment: Alignment.bottomCenter,
                                            duration:
                                                Duration(milliseconds: 300),
                                            child: Quiz(
                                                questions:
                                                    allQuizes[1].questions!)));
                                  },
                                  child: Stack(children: [
                                    Container(
                                        height: 160.h,
                                        width: 160.w,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white,
                                                width: 5.r),
                                            shape: BoxShape.circle,
                                            color: Colors.pink[100],
                                            image: DecorationImage(
                                                fit: BoxFit.fitWidth,
                                                image: AssetImage(
                                                    allQuizes[1].image!)),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.4),
                                                  spreadRadius: 2.r,
                                                  blurRadius: 4.r,
                                                  offset: Offset(0, 2))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 140.h, left: 30.w),
                                        child: Container(
                                            height: 30.h,
                                            width: 100.w,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.2),
                                                      spreadRadius: 2.r,
                                                      blurRadius: 5.r,
                                                      offset: Offset(1, 3))
                                                ],
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.r)),
                                            child: Center(
                                                child: Text(
                                                    textAlign: TextAlign.center,
                                                    "Animals",
                                                    style: TextStyle(
                                                        fontSize: 20.sp,
                                                        color:
                                                            Color(0xffFF9900),
                                                        fontWeight:
                                                            FontWeight.bold)))))
                                  ]))))))
            ])));
  }
}






