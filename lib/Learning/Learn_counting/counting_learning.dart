import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_quiz/Lists/counting_list.dart';
import 'package:page_transition/page_transition.dart';
import 'package:text_to_speech/text_to_speech.dart';

import '../../Widgets/exitDialog.dart';
import '../../home.dart';

class Counting_learning extends StatefulWidget {
  const Counting_learning({Key? key}) : super(key: key);

  @override
  State<Counting_learning> createState() => _Counting_learningState();
}

class _Counting_learningState extends State<Counting_learning> {
  int index = 0;
  TextToSpeech tts = TextToSpeech();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tts.speak(counting[0].counted_images_pronunce.toString());
    double rate = 0.6;
    tts.setRate(rate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background_4.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    /*      mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,*/
                    children: [
                      SizedBox(height: 9.h),
                      ListTile(
                        title: Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                              onTap: () {
                                showExitPopup1(context);
                              },
                              child: Padding(
                                padding: EdgeInsets.all(10.r),
                                child: Container(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Image.asset(
                                        'images/buttons/home_button.png')),
                              )),
                        ),
                        onTap: () {
                          showExitPopup1(context);
                          /*showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                shape: const Border(),
                                title: SizedBox(
                                  width: 70.sp,
                                  child: Text(
                                    'Back to Home...?',
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                actions: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text("NO"),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          *//*Navigator.pushReplacement(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.fade,
                                              alignment: Alignment.bottomCenter,
                                              duration: const Duration(
                                                  milliseconds: 600),
                                              child: const Home(),
                                            ),
                                          );*//*
                                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>Home()), (route) => false);
                                        },
                                        child: Text("Yes"),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          );*/
                        }
                      ),
                      SizedBox(height: 35.h),
                      Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 300.h,
                              width: 260.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                    color: Colors.deepOrange, width: 3.w),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 400.h,
                              width: 250.w,
                              child: Column(
                                children: [
                                  Container(
                                    height: 67.h,
                                    //  width: 150,
                                    child: ListTile(
                                      title: Center(
                                        child: Text(
                                          counting[index].spell_counting.toString(),
                                          style: TextStyle(
                                            fontStyle: FontStyle.normal,
                                            color: Colors.orange,
                                            fontSize: 40.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ), /*Image.asset(counting[index].spell_counting_image.toString()  )*/
                                      ),
                                      onTap: () {
                                        setState(
                                          () {
                                            tts.setLanguage('en-US');
                                            tts.speak(
                                              counting[index]
                                                  .spell_counting_pronounce
                                                  .toString(),
                                            );
                                            double rate = 0.6;
                                            tts.setRate(rate);
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    title: Container(
                                      height: 180.h,

                                      width: 200.w,
                                      child: Center(
                                        child: Image.asset(
                                          counting[index].counted_images.toString(),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                          tts.setLanguage('en-US');
                                          tts.speak(counting[index]
                                              .counted_images_pronunce
                                              .toString());
                                          double rate = 0.6;
                                          tts.setRate(rate);
                                        },
                                      );
                                    },
                                  ),

                                  ListTile(
                                    title: Center(
                                      child: Stack(
                                        children: [
                                          Center(
                                            child: Container(
                                              child: SvgPicture.asset(
                                                'images/buttons/counting_background.svg',
                                                //height: 125.0,
                                              ),
                                            ),
                                          ),
                                          //padding: const EdgeInsets.only(left: 40,right: 50,top: 15),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 50.w, right: 50.w,top: 18.h,bottom: 18.h),
                                            child: Container(
                                              alignment: Alignment.center,

                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  counting[index]
                                                      .counting
                                                      .toString(),
                                                  style: TextStyle(
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.white,
                                                    fontSize: 76.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      setState(
                                        () {
                                          tts.setLanguage('en-US');
                                          tts.speak(
                                              counting[index].counting.toString());
                                          double rate = 0.6;
                                          tts.setRate(rate);
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 100.h,
                            width: 100.w,
                            child: ListTile(
                              title: Center(
                                child: Image.asset(
                                  'images/buttons/left_button.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              onTap: () {
                                setState(
                                  () {
                                    if (index > 0) {
                                      index--;
                                      tts.setLanguage('en-US');
                                      tts.speak(counting[index]
                                          .counted_images_pronunce
                                          .toString());
                                      double rate = 0.6;
                                      tts.setRate(rate);
                                    } else if (index != 0) {
                                      Navigator.pushReplacement(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          alignment: Alignment.bottomCenter,
                                          duration:
                                              const Duration(milliseconds: 600),
                                          child: const Home(),
                                        ),
                                      );
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                          Container(
                            height: 100.h,
                            width: 100.w,
                            child: ListTile(
                              title: Center(
                                  child: Image.asset(
                                'images/buttons/right_button.png',
                                fit: BoxFit.fill,
                              )),
                              onTap: () {
                                setState(
                                  () {
                                    if (index < 9) {
                                      index++;
                                      tts.setLanguage('en-US');
                                      tts.speak(counting[index]
                                          .counted_images_pronunce
                                          .toString());
                                      double rate = 0.6;
                                      tts.setRate(rate);
                                    } /*else if (index != 9) {
                                      Navigator.pushReplacement(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType.fade,
                                              alignment: Alignment.bottomCenter,
                                              duration:
                                                  const Duration(milliseconds: 600),
                                              child: const Home()));
                                    }*/
                                  },
                                );
                              },
                            ),
                          ),

                          /*  IconButton(color:Colors.red,icon: Icon(Icons.arrow_right_alt_outlined), onPressed: () { setState(() {

                            if(index>0){

                              index-- ;
                            }
                            else{
                              Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType
                                          .fade,
                                      alignment: Alignment
                                          .bottomCenter,
                                      duration:
                                      const Duration(
                                          milliseconds:
                                          600),
                                      child: const Home()));
                            }

                          });} ,),
                          IconButton(icon: Icon(Icons.navigate_next), onPressed: () {

                            setState(() {
                              if(index<9){index++ ;

                            }
                              else{
                              Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType
                                          .fade,
                                      alignment: Alignment
                                          .bottomCenter,
                                      duration:
                                      const Duration(
                                          milliseconds:
                                          600),
                                      child: const Home()));
                            }
                            });},),*/
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
