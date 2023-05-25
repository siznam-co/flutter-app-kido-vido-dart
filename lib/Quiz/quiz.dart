import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quiz/Quiz/quiz_type.dart';
import 'package:new_quiz/Quiz/result.dart';
import 'package:page_transition/page_transition.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:text_to_speech/text_to_speech.dart';
import '../Widgets/exitDialog.dart';
import '../model/vibration.dart';
import 'model/question_model.dart';

int quiz_num = 0;
int score = 0;

///kido vido
class Quiz extends StatefulWidget {
  List<Questions> questions;

  @override
  State<Quiz> createState() => _QuizsState();

  Quiz({
    required this.questions,
  });
}

class _QuizsState extends State<Quiz> {
  TextToSpeech tts = TextToSpeech();
  int index = 0;

  /*Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
              shape: const Border(),
              title: SizedBox(
                //height: 180,
                width: 70.w,
                child: Column(
                  children: [
                    Text(
                      'Do you want to exit game',
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
              ]));*/
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () => showExitPopup1(context),
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                    width: size.width,
                    height: size.height,
                    child: Image.asset(
                      "images/quizeBackground.png",
                      fit: BoxFit.cover,
                    )),
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      InkWell(
                          onTap: () {
                            showExitPopup1(context);
                            /*showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                      backgroundColor: Colors.white,
                                      // shape: const Border(),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.r)),
                                      title: SizedBox(
                                        width: 70.w,
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
                                                score = 0;
                                                quiz_num = 0;
                                                Navigator.pop(context);
                                              },
                                              child: Text("NO"),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.blue,
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                */ /*Navigator.pushReplacement(
                                                  context,
                                                  PageTransition(
                                                    type: PageTransitionType.fade,
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    duration: const Duration(
                                                        milliseconds: 600),
                                                    child: const Quiz_type(),
                                                  ),
                                                )*/ /*
                                                Navigator.pushAndRemoveUntil(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (BuildContext
                                                                    context) =>
                                                                Quiz_type()),
                                                        (route) => false)
                                                    .then((value) => score = 0)
                                                    .then((value) => quiz_num = 0);
                                              },
                                              child: Text("Yes"),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.red,
                                              ),
                                            ),
                                            */ /*RaisedButton(
                                      onPressed: () {},
                                      child: Text('No'),
                                    ),
                                    RaisedButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            alignment: Alignment.bottomCenter,
                                            duration: const Duration(
                                                milliseconds: 600),
                                            child: const Quiz_type(),
                                          ),
                                        )
                                            .then((value) => score = 0)
                                            .then((value) => quiz_num = 0);
                                      },
                                      color: Colors.red,
                                      child: const Text("Yes"),
                                    ),*/
                            /*
                                          ],
                                        ),
                                      ]);
                                });*/
                          },
                          child: Padding(
                              padding: EdgeInsets.all(20.r),
                              child: Image.asset(
                                  "images/buttons/home_button.png",
                                  height: 38.h,
                                  width: 38.w)))
                    ]),
                    Container(
                        height: 40.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Colors.yellowAccent,
                          border: Border.all(color: Colors.transparent),
                          // border: Border.all(color: Colors.black),
                        ),
                        child: Row(children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            'Scores : $score/10',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                          SizedBox(width: 10.w),
                          VerticalDivider(
                            thickness: 0.67.h,
                            // thickness: 1.h,
                            color: Colors.black,
                          ),
                          SizedBox(width: 30.w),
                          Text(
                            'Level : 1',
                            style: TextStyle(fontSize: 18.sp),
                          )
                        ])),
                    Container(
                        height: 60.h,
                        width: 340.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SfSlider(
                            activeColor: Color(0xffFFF700),
                            min: 1,
                            max: 10,
                            value: quiz_num,
                            interval: 1,
                            inactiveColor: Color(0xffFFFFFF),
                            //showTicks: true,
                            showLabels: true,
                            enableTooltip: true,
                            //minorTicksPerInterval: 1,
                            onChanged: (value) {
                              setState(() {
                                quiz_num = value;
                              });
                            })),
                    SizedBox(height: 28.h),
                    // SizedBox(height: 30.h),
                    Container(
                        height: 320.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                            color: Color(0xffDCA813),
                            width: 5.w,
                          ),
                        ),
                        child: Column(children: [
                          SizedBox(height: 10.h),
                          Text(
                            'What is this?',
                            style: TextStyle(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 50.h),
                          InkWell(
                              onTap: () {
                                tts.speak(
                                    widget.questions[index].ans.toString());
                                double rate = 0.6;
                                tts.setRate(rate);
                              },
                              child: Image.asset(
                                widget.questions[index].questionImage!,
                                height: size.height * 0.22,
                                // height: 170.h,
                                fit: BoxFit.contain,
                              ))
                        ])),
                    SizedBox(height: 12.h),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w, right: 12.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 50.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                //color: Colors.red,
                                color: Color(0xffFFED00),
                                border: Border.all(color: Colors.black),
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      child: Center(
                                        child: Text(
                                          widget.questions[index].op1
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.sp),
                                        ),
                                      ),
                                      onTap: () {
                                        print(
                                          '${widget.questions[index].op1.toString()}',
                                        );
                                        print(index);
                                        setState(
                                          () {
                                            // widget.questions[index].op1=widget.questions[index].selected ;
                                            widget.questions[index].selected =
                                                widget.questions[index].op1;
                                            if (index < 10) {
                                              if (widget.questions[index].ans !=
                                                  widget.questions[index].op1) {
                                                setState(() {
                                                  quiz_num++;
                                                  index++;
                                                  wronganswervibrate()
                                                      .then((value) => {
                                                            showDialog(
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                Future.delayed(
                                                                  Duration(
                                                                      milliseconds:
                                                                          500),
                                                                  () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop(
                                                                            true);
                                                                  },
                                                                );
                                                                return AlertDialog(
                                                                  shape:
                                                                      CircleBorder(),
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white12,
                                                                  title:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .all(15
                                                                            .r),
                                                                    child: Image
                                                                        .asset(
                                                                      'images/cross.png',
                                                                      //    fit: BoxFit.fill
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            )
                                                          });
                                                });
                                              } else if (widget
                                                      .questions[index].ans ==
                                                  widget.questions[index].op1) {
                                                setState(() {
                                                  score++;
                                                  index++;
                                                  quiz_num++;
                                                  rightanswervibrate()
                                                      .then((value) => {
                                                            showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  Future
                                                                      .delayed(
                                                                    Duration(
                                                                        milliseconds:
                                                                            500),
                                                                    () {
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop(
                                                                              true);
                                                                    },
                                                                  );
                                                                  return AlertDialog(
                                                                      shape:
                                                                          CircleBorder(),
                                                                      backgroundColor:
                                                                          Colors
                                                                              .white12,
                                                                      title: Padding(
                                                                          padding: EdgeInsets.all(15.r),
                                                                          child: Image.asset('images/chek.png'
                                                                              //    fit: BoxFit.fill
                                                                              )));
                                                                })
                                                          });
                                                });
                                              }
                                            }
                                            else if (score == 10) {
                                              print(score);
                                              //._controllerCenter.play();
                                              //_controllerBottomCenter.play();
                                              showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        Future.delayed(
                                                          Duration(
                                                              milliseconds:
                                                                  200),
                                                          () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop(true);
                                                          },
                                                        );
                                                        return AlertDialog(
                                                            shape:
                                                                CircleBorder(),
                                                            backgroundColor:
                                                                Colors.white12,
                                                            title: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(40
                                                                            .r),
                                                                child: Column(
                                                                    children: [
                                                                      Text(
                                                                        'Congratulation...!',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              20.sp,
                                                                          color:
                                                                              Colors.yellow,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      Image
                                                                          .asset(
                                                                        'images/celebration.png',
                                                                        //    fit: BoxFit.fill
                                                                      )
                                                                    ])));
                                                      })
                                                  .then((value) =>
                                                      Navigator.pushReplacement(
                                                          context,
                                                          PageTransition(
                                                              type:
                                                                  PageTransitionType
                                                                      .fade,
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      600),
                                                              child: Result(widget
                                                                  .questions))));
                                            }
                                            else {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  Future.delayed(
                                                    Duration(seconds: 1),
                                                    () {
                                                      Navigator.of(context)
                                                          .pop(true);
                                                    },
                                                  );
                                                  return AlertDialog(
                                                      shape: CircleBorder(),
                                                      backgroundColor:
                                                          Colors.white12,
                                                      title: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.r),
                                                          child: Image.asset(
                                                            'images/sad.png',
                                                            //    fit: BoxFit.fill
                                                          )));
                                                },
                                              )
                                                  .then((value) => quiz_num = 1)
                                                  .then(
                                                    (value) => Navigator
                                                        .pushReplacement(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .fade,
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        duration: Duration(
                                                            milliseconds: 600),
                                                        child: Result(
                                                            widget.questions),
                                                      ),
                                                    ),
                                                  );
                                            }

                                            /*if (index < 10) {
                                              if (widget.questions[index].ans !=
                                                  widget.questions[index].op1) {
                                                setState(() {
                                                  wronganswervibrate();
                                                  index++;
                                                  quiz_num++;
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      Future.delayed(
                                                        const Duration(
                                                            milliseconds: 500),
                                                            () {
                                                          Navigator.of(context)
                                                              .pop(true);
                                                        },
                                                      );
                                                      return AlertDialog(
                                                        shape: const CircleBorder(),
                                                        backgroundColor: Colors.white12,
                                                        title: Padding(
                                                          padding: EdgeInsets.all(15.r),
                                                          child: Image.asset(
                                                            'images/cross.png',
                                                            //    fit: BoxFit.fill
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                });
                                              } else {
                                                setState(
                                                      () {
                                                    index++;
                                                    quiz_num++;
                                                    score++;
                                                    rightanswervibrate();
                                                    showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        Future.delayed(
                                                            const Duration(
                                                                milliseconds: 500), () {
                                                          Navigator.of(context)
                                                              .pop(true);
                                                        });
                                                        return AlertDialog(
                                                          shape: CircleBorder(),
                                                          backgroundColor:
                                                          Colors.white12,
                                                          title: Padding(
                                                            padding:
                                                            EdgeInsets.all(15.r),
                                                            child: Image.asset(
                                                              'images/chek.png',
                                                              //    fit: BoxFit.fill
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                );
                                              }
                                            }
                                            else {
                                              print('index in else part: $index');
                                            }*/

                                          },
                                        );
                                      },
                                    ),
                                    Container(
                                      child: InkWell(
                                        onTap: () {
                                          tts.speak(
                                            widget.questions[index].op1
                                                .toString(),
                                          );
                                          double rate = 0.6;
                                          tts.setRate(rate);
                                        },
                                        child: Image.asset(
                                          "images/speakerButton.png",
                                          height: 16.h,
                                          width: 19.w,
                                        ),
                                      ),
                                    ),
                                  ])),
                          Container(
                            height: 50.h,
                            width: 140.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: Colors.yellow,
                              border: Border.all(color: Colors.black),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    tts.speak(
                                      widget.questions[index].op2.toString(),
                                    );
                                    double rate = 0.6;
                                    tts.setRate(rate);
                                  },
                                  child: Image.asset(
                                    "images/speakerButton.png",
                                    height: 16.h,
                                    width: 19.w,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print(widget.questions[index].selected);
                                    print(index);
                                    setState(
                                      () {
                                        widget.questions[index].selected =
                                            widget.questions[index].op2;
                                        if (index < 9) {
                                          if (widget.questions[index].op2 !=
                                              widget.questions[index].ans) {
                                            wronganswervibrate();
                                            index++;
                                            quiz_num++;
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(
                                                  Duration(milliseconds: 500),
                                                  () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  },
                                                );
                                                return AlertDialog(
                                                  shape: CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                        EdgeInsets.all(15.r),
                                                    child: Image.asset(
                                                      'images/cross.png',
                                                      //    fit: BoxFit.fill
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            setState(
                                              () {
                                                index++;
                                                quiz_num++;
                                                score++;
                                                rightanswervibrate();
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    Future.delayed(
                                                      Duration(
                                                          milliseconds: 500),
                                                      () {
                                                        Navigator.of(context)
                                                            .pop(true);
                                                      },
                                                    );
                                                    return AlertDialog(
                                                      shape: CircleBorder(),
                                                      backgroundColor:
                                                          Colors.white12,
                                                      title: Padding(
                                                        padding: EdgeInsets.all(
                                                            15.r),
                                                        child: Image.asset(
                                                          'images/chek.png',
                                                          //    fit: BoxFit.fill
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            );
                                          }
                                        }
                                        else {
                                          if (score > 8) {
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(
                                                  Duration(milliseconds: 200),
                                                  () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  },
                                                );
                                                return AlertDialog(
                                                  shape: CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                        EdgeInsets.all(40.r),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          'Congratulation...!',
                                                          style: TextStyle(
                                                            fontSize: 20.sp,
                                                            color:
                                                                Colors.yellow,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Image.asset(
                                                          'images/celebration.png',
                                                          //    fit: BoxFit.fill
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                              (value) =>
                                                  Navigator.pushReplacement(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  duration: Duration(
                                                      milliseconds: 600),
                                                  child: Result(
                                                    widget.questions,
                                                  ),
                                                ),
                                              ),
                                            );
                                          } else {
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(
                                                  Duration(seconds: 1),
                                                  () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  },
                                                );
                                                return AlertDialog(
                                                  shape: CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                        EdgeInsets.all(15.r),
                                                    child: Image.asset(
                                                      'images/sad.png',
                                                      //    fit: BoxFit.fill
                                                    ),
                                                  ),
                                                );
                                              },
                                            )
                                                .then((value) => quiz_num = 1)
                                                .then((value) {
                                              print(widget.questions);

                                              Navigator.pushReplacement(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  duration: Duration(
                                                      milliseconds: 600),
                                                  child:
                                                      Result(widget.questions),
                                                ),
                                              );
                                            });
                                          }
                                        }
                                        /*if (index < 10) {
                                          if (widget.questions[index].ans !=
                                              widget.questions[index].op2) {
                                            setState(() {
                                              wronganswervibrate();
                                              index++;
                                              quiz_num++;
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  Future.delayed(
                                                    const Duration(
                                                        milliseconds: 500),
                                                        () {
                                                      Navigator.of(context)
                                                          .pop(true);
                                                    },
                                                  );
                                                  return AlertDialog(
                                                    shape: const CircleBorder(),
                                                    backgroundColor: Colors.white12,
                                                    title: Padding(
                                                      padding: EdgeInsets.all(15.r),
                                                      child: Image.asset(
                                                        'images/cross.png',
                                                        //    fit: BoxFit.fill
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            });
                                          }
                                          else {
                                            setState(
                                                  () {
                                                index++;
                                                quiz_num++;
                                                score++;
                                                rightanswervibrate();
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    Future.delayed(
                                                        const Duration(
                                                            milliseconds: 500), () {
                                                      Navigator.of(context)
                                                          .pop(true);
                                                    });
                                                    return AlertDialog(
                                                      shape: CircleBorder(),
                                                      backgroundColor:
                                                      Colors.white12,
                                                      title: Padding(
                                                        padding:
                                                        EdgeInsets.all(15.r),
                                                        child: Image.asset(
                                                          'images/chek.png',
                                                          //    fit: BoxFit.fill
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            );
                                          }
                                        }
                                        else {
                                          print('index in else part: $index');
                                        }*/

                                      },
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      widget.questions[index].op2.toString(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w, right: 12.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50.h,
                            width: 140.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: Colors.yellow,
                                border: Border.all(color: Colors.black)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    print(widget.questions[index].selected.toString());
                                    widget.questions[index].selected = widget.questions[index].op3;
                                    /*if (index < 9) {
                                      if (widget.questions[index].ans != widget.questions[index].op3) {
                                            wronganswervibrate();
                                            index++;
                                            quiz_num++;
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(
                                                  Duration(milliseconds: 500),
                                                  () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  },
                                                );
                                                return AlertDialog(
                                                  shape: CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                        EdgeInsets.all(15.r),
                                                    child: Image.asset(
                                                      'images/cross.png',
                                                      //    fit: BoxFit.fill
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          }
                                          else {
                                            setState(
                                              () {
                                                index++;
                                                quiz_num++;
                                                score++;
                                                rightanswervibrate();
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    Future.delayed(
                                                      Duration(
                                                          milliseconds: 500),
                                                      () {
                                                        Navigator.of(context)
                                                            .pop(true);
                                                      },
                                                    );
                                                    return AlertDialog(
                                                      shape: CircleBorder(),
                                                      backgroundColor:
                                                          Colors.white12,
                                                      title: Padding(
                                                        padding: EdgeInsets.all(
                                                            15.r),
                                                        child: Image.asset(
                                                          'images/chek.png',
                                                          //    fit: BoxFit.fill
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            );
                                          }
                                        }
                                        else {
                                          if (score >= 8) {
                                            // _controllerCenter.play();
                                            //_controllerBottomCenter.play();
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(
                                                  Duration(milliseconds: 200),
                                                  () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  },
                                                );
                                                return AlertDialog(
                                                  shape: CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                        EdgeInsets.all(40.r),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          'Congratulation...!',
                                                          style: TextStyle(
                                                            fontSize: 20.sp,
                                                            color:
                                                                Colors.yellow,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Image.asset(
                                                          'images/celebration.png',
                                                          //    fit: BoxFit.fill
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                              (value) =>
                                                  Navigator.pushReplacement(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  duration: Duration(
                                                      milliseconds: 600),
                                                  child: Result(
                                                    widget.questions,
                                                  ),
                                                ),
                                              ),
                                            );
                                          } else {
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(Duration(seconds: 1),
                                                  () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  },
                                                );
                                                return AlertDialog(
                                                  shape: CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                        EdgeInsets.all(15.r),
                                                    child: Image.asset(
                                                      'images/sad.png',
                                                      //    fit: BoxFit.fill
                                                    ),
                                                  ),
                                                );
                                              },
                                            )
                                                .then((value) => quiz_num = 1)
                                                .then((value) => Navigator
                                                    .pushReplacement(
                                                        context,
                                                        PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    600),
                                                            child: Result(widget
                                                                .questions))));
                                          }
                                        }*/
                                    ///MPQ02VC/A
                                    if (index < 10) {
                                      if (widget.questions[index].ans !=
                                          widget.questions[index].op3) {
                                        setState(() {
                                          wronganswervibrate();
                                          index++;
                                          quiz_num++;
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              Future.delayed(Duration(
                                                    milliseconds: 500), () {
                                                  Navigator.of(context)
                                                      .pop(true);
                                                },
                                              );
                                              return AlertDialog(
                                                shape: CircleBorder(),
                                                backgroundColor: Colors.white12,
                                                title: Padding(
                                                  padding: EdgeInsets.all(15.r),
                                                  child: Image.asset(
                                                    'images/cross.png',
                                                    //    fit: BoxFit.fill
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        });
                                      }
                                      else {
                                        setState(
                                              () {
                                            index++;
                                            quiz_num++;
                                            score++;
                                            rightanswervibrate();
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(
                                                     Duration(
                                                        milliseconds: 500), () {
                                                  Navigator.of(context)
                                                      .pop(true);
                                                });
                                                return AlertDialog(
                                                  shape: CircleBorder(),
                                                  backgroundColor:
                                                  Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                    EdgeInsets.all(15.r),
                                                    child: Image.asset(
                                                      'images/chek.png',
                                                      //    fit: BoxFit.fill
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        );
                                      }
                                    }
                                    else {
                                      print('index in else part: $index');
                                    }


                                  },
                                  child: Center(
                                    child: Text(
                                      widget.questions[index].op3.toString(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    tts.speak(
                                      widget.questions[index].op3.toString(),
                                    );
                                    double rate = 0.6;
                                    tts.setRate(rate);
                                  },
                                  child: Image.asset(
                                    "images/speakerButton.png",
                                    height: 16.h,
                                    width: 19.w,
                                  ),
                                ),
                                /*IconButton(
                              onPressed: () {
                                print('hi');
                                tts.speak(
                                  widget.questions[index].op3.toString(),
                                );
                                double rate = 0.6;
                                tts.setRate(rate);
                              },
                              icon: const Icon(Icons.campaign_sharp),
                            )*/
                              ],
                            ),
                          ),
                          Container(
                            height: 50.h,
                            width: 140.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: Colors.yellow,
                                border: Border.all(color: Colors.black)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    tts.speak(
                                      widget.questions[index].op4.toString(),
                                    );
                                    double rate = 0.6;
                                    tts.setRate(rate);
                                  },
                                  child: Image.asset(
                                    'images/speakerButton.png',
                                    height: 16.h,
                                    width: 19.w,
                                  ),
                                ),
                                /*IconButton(
                              onPressed: () {
                                print('hi');
                                tts.speak(
                                  widget.questions[index].op4.toString(),
                                );
                                double rate = 0.6;
                                tts.setRate(rate);
                              },
                              icon: const Icon(Icons.campaign_sharp),
                            ),*/
                                InkWell(
                                  onTap: () {
                                    widget.questions[index].selected =
                                        widget.questions[index].op4;
                                    print(index);
                                    if (index < 10) {
                                      if (widget.questions[index].ans !=
                                          widget.questions[index].op4) {
                                        setState(() {
                                          wronganswervibrate();
                                          index++;
                                          quiz_num++;
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              Future.delayed(
                                                const Duration(
                                                    milliseconds: 500),
                                                () {
                                                  Navigator.of(context)
                                                      .pop(true);
                                                },
                                              );
                                              return AlertDialog(
                                                shape: const CircleBorder(),
                                                backgroundColor: Colors.white12,
                                                title: Padding(
                                                  padding: EdgeInsets.all(15.r),
                                                  child: Image.asset(
                                                    'images/cross.png',
                                                    //    fit: BoxFit.fill
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        });
                                      } else {
                                        setState(
                                          () {
                                            index++;
                                            quiz_num++;
                                            score++;
                                            rightanswervibrate();
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(
                                                    const Duration(
                                                        milliseconds: 500), () {
                                                  Navigator.of(context)
                                                      .pop(true);
                                                });
                                                return AlertDialog(
                                                  shape: CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                        EdgeInsets.all(15.r),
                                                    child: Image.asset(
                                                      'images/chek.png',
                                                      //    fit: BoxFit.fill
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        );
                                      }
                                    }

                                    ///---7/12/22---->8:28
                                    /*else {
                                          if (score >= 8) {
                                            //_controllerCenter.play();
                                            //_controllerBottomCenter.play();
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(
                                                  const Duration(
                                                      milliseconds: 200),
                                                  () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  },
                                                );
                                                return AlertDialog(
                                                  shape: CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                        EdgeInsets.all(40.r),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          'Congratulation...!',
                                                          style: TextStyle(
                                                            fontSize: 20.sp,
                                                            color:
                                                                Colors.yellow,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Image.asset(
                                                          'images/celebration.png',
                                                          //    fit: BoxFit.fill
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                              (value) =>
                                                  Navigator.pushReplacement(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  duration: Duration(
                                                      milliseconds: 600),
                                                  child: Result(
                                                    widget.questions,
                                                  ),
                                                ),
                                              ),
                                            );
                                          } else {
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(
                                                  Duration(seconds: 1),
                                                  () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  },
                                                );
                                                return AlertDialog(
                                                  shape: const CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                        EdgeInsets.all(15.r),
                                                    child: Image.asset(
                                                      'images/sad.png',
                                                      //    fit: BoxFit.fill
                                                    ),
                                                  ),
                                                );
                                              },
                                            )
                                                .then((value) => quiz_num = 1)
                                                .then(
                                                  (value) =>
                                                      Navigator.pushReplacement(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      duration: Duration(
                                                          milliseconds: 600),
                                                      child: Result(
                                                        widget.questions,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                          }
                                        }*/
                                    else {
                                      print('index in else part: $index');
                                    }
                                  },
                                  child: Center(
                                    child: Text(
                                      widget.questions[index].op4.toString(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    /*SizedBox(
                    height: 480.h,
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        Text(
                          'What is this ?',
                          style: TextStyle(fontSize: 24.sp),
                        ),
                        ListTile(
                          title: Container(
                            height: 250.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                widget.questions[index].questionImage!,
                              ),
                              //fit:BoxFit.cover,
                            )),
                            //child:
                            //  Text('What is this ?',style: TextStyle(fontSize: 24.sp),),
                            */
                    /*Image.asset(
                                  widget.questions[index].questionImage!,

                                 // quizType[0]['Questions'][0]['questionImage'].toString(),                          //fruits[index].questionImage.toString(),

                            )*/
                    /*
                          ),
                          onTap: () {
                            tts.speak(widget.questions[index].ans.toString());
                            double rate = 0.6;
                            tts.setRate(rate);
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.r),
                                      bottomRight: Radius.circular(10.r)),
                                  color: Colors.yellow,
                                  border: Border.all(color: Colors.black)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  // SizedBox(width: 10,),
                                  InkWell(
                                    child: Center(
                                        child: Text(
                                      widget.questions[index].op1.toString(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    )),
                                    onTap: () {
                                      print(
                                        widget.questions[index].op1.toString(),
                                      );
                                      //  print(quizType[0]['Questions'][0].toString());
                                      // print(fruits[index].selected.toString());
                                      print(index);

                                      setState(() {
                                        widget.questions[index].selected =
                                            widget.questions[index].op1;
                                        if (index < 9) {
                                          if (widget.questions[index].ans !=
                                              widget.questions[index].op1) {
                                            quiz_num++;
                                            index++;
                                            wronganswervibrate();
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(
                                                    const Duration(
                                                        milliseconds: 500), () {
                                                  Navigator.of(context)
                                                      .pop(true);
                                                });
                                                return AlertDialog(
                                                  shape: const CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15.0),
                                                    child: Image.asset(
                                                      'images/cross.png',
                                                      //    fit: BoxFit.fill
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            setState(() {
                                              print("Tapped");
                                              print("score----->$score");
                                              score++;
                                              print("score++----->$score");
                                              index++;
                                              quiz_num++;
                                              rightanswervibrate();
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  Future.delayed(
                                                      const Duration(
                                                          milliseconds: 500),
                                                      () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  });
                                                  return AlertDialog(
                                                    shape: const CircleBorder(),
                                                    backgroundColor:
                                                        Colors.white12,
                                                    title: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              15.0),
                                                      child: Image.asset(
                                                        'images/chek.png',
                                                        //    fit: BoxFit.fill
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            });
                                          }
                                        } else if (score >= 8) {
                                          //._controllerCenter.play();
                                          //_controllerBottomCenter.play();
                                          showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    Future.delayed(
                                                        const Duration(
                                                            milliseconds: 200),
                                                        () {
                                                      Navigator.of(context)
                                                          .pop(true);
                                                    });
                                                    return AlertDialog(
                                                      shape:
                                                          const CircleBorder(),
                                                      backgroundColor:
                                                          Colors.white12,
                                                      title: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(40.0),
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              'Congratulation...!',
                                                              style: TextStyle(
                                                                fontSize: 20.sp,
                                                                color: Colors
                                                                    .yellow,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            Image.asset(
                                                              'images/celebration.png',
                                                              //    fit: BoxFit.fill
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  })
                                              .then((value) =>
                                                  Navigator.pushReplacement(
                                                      context,
                                                      PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .fade,
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  600),
                                                          child: Result(
                                                            widget.questions,
                                                          ))));
                                        } else {
                                          showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    Future.delayed(
                                                        const Duration(
                                                            seconds: 1), () {
                                                      Navigator.of(context)
                                                          .pop(true);
                                                    });
                                                    return AlertDialog(
                                                      shape:
                                                          const CircleBorder(),
                                                      backgroundColor:
                                                          Colors.white12,
                                                      title: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        child: Image.asset(
                                                          'images/sad.png',
                                                          //    fit: BoxFit.fill
                                                        ),
                                                      ),
                                                    );
                                                  })
                                              .then((value) => quiz_num = 1)
                                              .then((value) =>
                                                  Navigator.pushReplacement(
                                                      context,
                                                      PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .fade,
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  600),
                                                          child: Result(widget
                                                              .questions))));
                                        }
                                      });
                                    },
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        tts.speak(widget.questions[index].op1
                                            .toString());
                                        double rate = 0.6;
                                        tts.setRate(rate);
                                      },
                                      icon: const Icon(Icons.campaign_sharp))
                                ],
                              ),
                            ),
                            Container(
                              height: 50.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.r),
                                      bottomLeft: Radius.circular(10.r)),
                                  color: Colors.yellow,
                                  border: Border.all(color: Colors.black)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        tts.speak(widget.questions[index].op2
                                            .toString());
                                        double rate = 0.6;
                                        tts.setRate(rate);
                                      },
                                      icon: const Icon(Icons.campaign_sharp)),
                                  InkWell(
                                    onTap: () {
                                      print(widget.questions[index].selected);
                                      print(index);
                                      setState(() {
                                        widget.questions[index].selected =
                                            widget.questions[index].op2;
                                        if (index < 9) {
                                          if (widget.questions[index].op2 !=
                                              widget.questions[index].ans) {
                                            wronganswervibrate();
                                            index++;
                                            quiz_num++;
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(
                                                    const Duration(
                                                        milliseconds: 500), () {
                                                  Navigator.of(context)
                                                      .pop(true);
                                                });
                                                return AlertDialog(
                                                  shape: const CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15.0),
                                                    child: Image.asset(
                                                      'images/cross.png',
                                                      //    fit: BoxFit.fill
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            setState(() {
                                              index++;
                                              quiz_num++;
                                              score++;
                                              rightanswervibrate();
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  Future.delayed(
                                                      const Duration(
                                                          milliseconds: 500),
                                                      () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  });
                                                  return AlertDialog(
                                                    shape: const CircleBorder(),
                                                    backgroundColor:
                                                        Colors.white12,
                                                    title: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              15.0),
                                                      child: Image.asset(
                                                        'images/chek.png',
                                                        //    fit: BoxFit.fill
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            });
                                          }
                                        } else {
                                          if (score >= 8) {
                                            //_controllerCenter.play();
                                            //_controllerBottomCenter.play();
                                            showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  200), () {
                                                        Navigator.of(context)
                                                            .pop(true);
                                                      });
                                                      return AlertDialog(
                                                        shape:
                                                            const CircleBorder(),
                                                        backgroundColor:
                                                            Colors.white12,
                                                        title: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(40.0),
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                'Congratulation...!',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      20.sp,
                                                                  color: Colors
                                                                      .yellow,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              Image.asset(
                                                                'images/celebration.png',
                                                                //    fit: BoxFit.fill
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    })
                                                .then((value) =>
                                                    Navigator.pushReplacement(
                                                        context,
                                                        PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    600),
                                                            child: Result(
                                                              widget.questions,
                                                            ))));
                                          } else {
                                            showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 1), () {
                                                        Navigator.of(context)
                                                            .pop(true);
                                                      });
                                                      return AlertDialog(
                                                        shape:
                                                            const CircleBorder(),
                                                        backgroundColor:
                                                            Colors.white12,
                                                        title: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(15.0),
                                                          child: Image.asset(
                                                            'images/sad.png',
                                                            //    fit: BoxFit.fill
                                                          ),
                                                        ),
                                                      );
                                                    })
                                                .then((value) => quiz_num = 1)
                                                .then((value) =>
                                                    Navigator.pushReplacement(
                                                        context,
                                                        PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    600),
                                                            child: Result(widget
                                                                .questions))));
                                          }
                                        }
                                      });
                                    },
                                    child: Center(
                                        child: Text(
                                      widget.questions[index].op2.toString(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.r),
                                      bottomRight: Radius.circular(10.r)),
                                  color: Colors.yellow,
                                  border: Border.all(color: Colors.black)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      print(widget.questions[index].selected
                                          .toString());

                                      setState(() {
                                        widget.questions[index].selected =
                                            widget.questions[index].op3;
                                        if (index < 9) {
                                          if (widget.questions[index].ans !=
                                              widget.questions[index].op3) {
                                            wronganswervibrate();
                                            index++;
                                            quiz_num++;
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(
                                                    const Duration(
                                                        milliseconds: 500), () {
                                                  Navigator.of(context)
                                                      .pop(true);
                                                });
                                                return AlertDialog(
                                                  shape: const CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15.0),
                                                    child: Image.asset(
                                                      'images/cross.png',
                                                      //    fit: BoxFit.fill
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            setState(() {
                                              index++;
                                              quiz_num++;
                                              score++;
                                              rightanswervibrate();
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  Future.delayed(
                                                      const Duration(
                                                          milliseconds: 500),
                                                      () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  });
                                                  return AlertDialog(
                                                    shape: const CircleBorder(),
                                                    backgroundColor:
                                                        Colors.white12,
                                                    title: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              15.0),
                                                      child: Image.asset(
                                                        'images/chek.png',
                                                        //    fit: BoxFit.fill
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            });
                                          }
                                        } else {
                                          if (score >= 8) {
                                            // _controllerCenter.play();
                                            //_controllerBottomCenter.play();
                                            showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  200), () {
                                                        Navigator.of(context)
                                                            .pop(true);
                                                      });
                                                      return AlertDialog(
                                                        shape:
                                                            const CircleBorder(),
                                                        backgroundColor:
                                                            Colors.white12,
                                                        title: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(40.0),
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                'Congratulation...!',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      20.sp,
                                                                  color: Colors
                                                                      .yellow,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              Image.asset(
                                                                'images/celebration.png',
                                                                //    fit: BoxFit.fill
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    })
                                                .then((value) =>
                                                    Navigator.pushReplacement(
                                                        context,
                                                        PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    600),
                                                            child: Result(
                                                              widget.questions,
                                                            ))));
                                          } else {
                                            showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 1), () {
                                                        Navigator.of(context)
                                                            .pop(true);
                                                      });
                                                      return AlertDialog(
                                                        shape:
                                                            const CircleBorder(),
                                                        backgroundColor:
                                                            Colors.white12,
                                                        title: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(15.0),
                                                          child: Image.asset(
                                                            'images/sad.png',
                                                            //    fit: BoxFit.fill
                                                          ),
                                                        ),
                                                      );
                                                    })
                                                .then((value) => quiz_num = 1)
                                                .then((value) =>
                                                    Navigator.pushReplacement(
                                                        context,
                                                        PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    600),
                                                            child: Result(widget
                                                                .questions))));
                                          }
                                        }
                                      });
                                    },
                                    child: Center(
                                        child: Text(
                                      widget.questions[index].op3.toString(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    )),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        print('hi');
                                        tts.speak(widget.questions[index].op3
                                            .toString());
                                        double rate = 0.6;
                                        tts.setRate(rate);
                                      },
                                      icon: const Icon(Icons.campaign_sharp))
                                ],
                              ),
                            ),
                            Container(
                              height: 50.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.r),
                                      bottomLeft: Radius.circular(10.r)),
                                  color: Colors.yellow,
                                  border: Border.all(color: Colors.black)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        print('hi');
                                        tts.speak(widget.questions[index].op4
                                            .toString());
                                        double rate = 0.6;
                                        tts.setRate(rate);
                                      },
                                      icon: const Icon(Icons.campaign_sharp)),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        widget.questions[index].selected =
                                            widget.questions[index].op4;
                                        print(index);
                                        if (index < 9) {
                                          if (widget.questions[index].ans !=
                                              widget.questions[index].op4) {
                                            wronganswervibrate();
                                            index++;
                                            quiz_num++;
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(
                                                    const Duration(
                                                        milliseconds: 500), () {
                                                  Navigator.of(context)
                                                      .pop(true);
                                                });
                                                return AlertDialog(
                                                  shape: const CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  title: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15.0),
                                                    child: Image.asset(
                                                      'images/cross.png',
                                                      //    fit: BoxFit.fill
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            setState(() {
                                              index++;
                                              quiz_num++;
                                              score++;
                                              rightanswervibrate();
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  Future.delayed(
                                                      const Duration(
                                                          milliseconds: 500),
                                                      () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  });
                                                  return AlertDialog(
                                                    shape: const CircleBorder(),
                                                    backgroundColor:
                                                        Colors.white12,
                                                    title: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              15.0),
                                                      child: Image.asset(
                                                        'images/chek.png',
                                                        //    fit: BoxFit.fill
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            });
                                          }
                                        } else {
                                          if (score >= 8) {
                                            //_controllerCenter.play();
                                            //_controllerBottomCenter.play();
                                            showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  200), () {
                                                        Navigator.of(context)
                                                            .pop(true);
                                                      });
                                                      return AlertDialog(
                                                        shape:
                                                            const CircleBorder(),
                                                        backgroundColor:
                                                            Colors.white12,
                                                        title: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(40.0),
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                'Congratulation...!',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      20.sp,
                                                                  color: Colors
                                                                      .yellow,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              Image.asset(
                                                                'images/celebration.png',
                                                                //    fit: BoxFit.fill
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    })
                                                .then((value) =>
                                                    Navigator.pushReplacement(
                                                        context,
                                                        PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    600),
                                                            child: Result(
                                                              widget.questions,
                                                            ))));
                                          } else {
                                            showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 1), () {
                                                        Navigator.of(context)
                                                            .pop(true);
                                                      });
                                                      return AlertDialog(
                                                        shape:
                                                            const CircleBorder(),
                                                        backgroundColor:
                                                            Colors.white12,
                                                        title: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(15.0),
                                                          child: Image.asset(
                                                            'images/sad.png',
                                                            //    fit: BoxFit.fill
                                                          ),
                                                        ),
                                                      );
                                                    })
                                                .then((value) => quiz_num = 1)
                                                .then((value) =>
                                                    Navigator.pushReplacement(
                                                        context,
                                                        PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    600),
                                                            child: Result(
                                                              widget.questions,
                                                            ))));
                                          }
                                        }
                                      });
                                    },
                                    child: Center(
                                        child: Text(
                                      widget.questions[index].op4.toString(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),*/
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
