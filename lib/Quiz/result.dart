import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quiz/Quiz/quiz_type.dart';
import 'package:page_transition/page_transition.dart';

import '../Lists/image_lists.dart';
import '../Lists/quiz_list.dart';
import '../Quiz/quiz.dart';
import '../Widgets/exitDialog.dart';
import 'model/question_model.dart';

class Result extends StatefulWidget {
  // List<MDQuestions> questions;
  //  MDQuestions questions;
  List<Questions> questions;
  //Fruit_Result(this.questions);

  @override
  State<Result> createState() => _ResultState();
  /*Fruit_Result({
    required this.questions,
    required this.scores,
  });*/

  Result(
    this.questions,
  );
}

class _ResultState extends State<Result> {
  int index = 0;
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          /*appBar: AppBar(
            backgroundColor: Colors.white12,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Q No.',
                  style: TextStyle(fontSize: 20.sp),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.w),
                  child: Text(
                    'Selected',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                backgroundColor: Colors.white,
                                shape: const Border(),
                                title: SizedBox(
                                  //height: 180,
                                  width: 70.w,
                                  child: Column(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Do you want to exit...!',
                                        style: TextStyle(
                                          fontSize: 25.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RaisedButton(
                                        onPressed: () {
                                          score = 0;
                                          quiz_num = 0;
                                          Navigator.of(context).pop(true);
                                        },
                                        child: const Text('No'),
                                      ),
                                      RaisedButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                                  context,
                                                  PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      duration: const Duration(
                                                          milliseconds: 600),
                                                      child: const Quiz_type()))
                                              .then((value) => score = 0)
                                              .then((value) => quiz_num = 0);
                                        },
                                        child: const Text("Yes"),
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                ]);
                          });
                    },
                    icon: const Icon(Icons.home)),
                */
          /*Container(
                  width: 60,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/check_or_cross.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),*/
          /*
              ],
            ),
          ),*/
          body: SafeArea(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/background_3.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
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
                                              Navigator.pushReplacement(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  alignment: Alignment.bottomCenter,
                                                  duration: const Duration(
                                                      milliseconds: 600),
                                                  child: Quiz_type(),
                                                ),
                                              )
                                                  .then((value) => score = 0)
                                                  .then((value) => quiz_num = 0);
                                            },
                                            child: Text("Yes"),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.red,
                                            ),
                                          ),
                                          *//*RaisedButton(
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
                                        ),*//*
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              )*/
                            },
                            child: Padding(
                              padding: EdgeInsets.all(20.r),
                              child: Image.asset(
                                "images/buttons/left_button.png",
                                // "images/buttons/ba.png",
                                height: 38.h,
                                width: 38.w,
                              ),
                            ),
                          ),
                          SizedBox(width: 220.w),
                          /*InkWell(
                            onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Quiz(questions: [],),));
                            },
                            child: Icon(
                              Icons.refresh_sharp,
                              size: 50,
                              color: Colors.red,
                            ),
                          ),*/
                        ],
                      ),
                      Container(
                        height: 62.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                          color: Color(0xffFFF700),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.r),
                            topLeft: Radius.circular(15.r),
                          ),
                          border: Border.all(
                            color: Color(0xffDCA813),
                            width: 2.w,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w, right: 10.w),
                          child: Center(
                            child: Text(
                              "Obtained Marks = $score / 10",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 300.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15.r),
                              bottomLeft: Radius.circular(15.r),
                            ),
                            border: Border.all(
                              color: Color(0xffDCA813),
                              width: 2.w,
                            ),
                          ),
                          child: ListView.separated(
                            padding: EdgeInsets.all(8.r),
                            itemCount: widget.questions.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                leading: Padding(
                                  padding: EdgeInsets.only(top: 18.h),
                                  child: Text(
                                    "${index + 1})",
                                    style: TextStyle(fontSize: 20.sp),
                                  ),
                                ),
                                title: Padding(
                                  padding: EdgeInsets.only(right: 62.w),
                                  child: SizedBox(
                                    width: 50.w,
                                    height: 50.h,
                                    child: Image.asset(
                                      widget.questions[index].questionImage.toString(),
                                      // fruits_images[index],
                                    ),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Text(
                                    widget.questions[index].ans.toString(),
                                    style: TextStyle(fontSize: 20.sp),
                                  ),
                                ),
                                trailing: (widget.questions[index].ans.toString() ==
                                        widget.questions[index].selected.toString())
                                    ? Padding(
                                        padding: EdgeInsets.all(15.r),
                                        child: SizedBox(
                                          height: 50.h,
                                          child: Image.asset(
                                            'images/chek.png',
                                            //    fit: BoxFit.fill
                                          ),
                                        ))
                                    : Padding(
                                        padding: EdgeInsets.all(15.r),
                                        child: SizedBox(
                                          height: 50.h,
                                          child: Image.asset(
                                            'images/cross.png',
                                            //    fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) => Divider(
                              color: Colors.black
                            ),
                          ),
                        ),
                      ),
                      /*Expanded(
                        child: Container(
                          child: ListView.separated(
                            padding: const EdgeInsets.all(8),
                            itemCount: widget.questions.length,
                            // itemCount:10,// fruit_image.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                leading: Text(
                                  "$index )",
                                  style: TextStyle(fontSize: 20),
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: Image.asset(
                                        fruits_images[index],
                                      )),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    fruits[index].ans.toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                trailing: (widget.questions[index].ans.toString() ==
                                        widget.questions[index].selected.toString())
                                    ? Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: SizedBox(
                                          height: 50.h,
                                          child: Image.asset(
                                            'images/chek.png',
                                            //    fit: BoxFit.fill
                                          ),
                                        ))
                                    : Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: SizedBox(
                                          height: 50.h,
                                          child: Image.asset(
                                            'images/cross.png',
                                            //    fit: BoxFit.fill
                                          ),
                                        ),
                                      ),
                                */
                      /*Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "$index )",
                                      style: TextStyle(fontSize: 20.sp),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 70.w,
                                          height: 60.h,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                widget
                                                    .questions[index].questionImage
                                                    .toString(),
                                              ),
                                              // fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 10.w, top: 10.h),
                                          child: Text(
                                            widget.questions[index].ans.toString(),

                                            //  fruits[index].selected.toString(),
                                            // allQuestions[0].questions[index].ans.toString(),
                                            //widget.questions[index].ans.toString(),
                                            style: TextStyle(
                                                fontSize: 20.sp,
                                                color: Colors.grey),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      widget.questions[index].selected.toString(),
                                      style: TextStyle(fontSize: 18.sp),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        fruits[index].ans.toString(),
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    (widget.questions[index].ans.toString() ==
                                            widget.questions[index].selected
                                                .toString())
                                        ? Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: SizedBox(
                                              height: 50.h,
                                              child: Image.asset(
                                                'images/chek.png',
                                                //    fit: BoxFit.fill
                                              ),
                                            ))
                                        : Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: SizedBox(
                                              height: 50.h,
                                              child: Image.asset(
                                                'images/cross.png',
                                                //    fit: BoxFit.fill
                                              ),
                                            ))
                                  ],
                                )*/
                      /*
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) =>
                                const Divider(),
                          ),
                        ),
                      ),*/
                    ],
                  ),
                ),
              ],
            ),
          ),
          /*bottomNavigationBar: Container(
            height: 60.h,
            decoration: BoxDecoration(
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 2.r,
                  blurRadius: 4.r,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Obtained marks =  $score/ 10",
                  */
          /*${widget.scores}
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                OutlinedButton(
                    onPressed: () {
                      //_controllerCenter.play();
                      //_controllerBottomCenter.play();
                      print(score);
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                backgroundColor: Colors.white,
                                shape: const Border(),
                                title: SizedBox(
                                  //height: 180,
                                  width: 70.w,
                                  child: Column(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Do you want to exit...!',
                                        style: TextStyle(
                                          fontSize: 25.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RaisedButton(
                                        onPressed: () {
                                          score = 0;
                                          quiz_num = 0;
                                          Navigator.of(context).pop(true);
                                        },
                                        child: const Text('No'),
                                      ),
                                      RaisedButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                                  context,
                                                  PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      duration: const Duration(
                                                          milliseconds: 600),
                                                      child: const Quiz_type()))
                                              .then((value) => score = 0)
                                              .then((value) => quiz_num = 0);
                                        },
                                        color: Colors.red,
                                        child: const Text("Yes"),
                                      ),
                                    ],
                                  ),
                                ]);
                          });
                    },
                    child: const Text('Next'))
              ],
            ),
          ),*/
        ),
      ],
    );
  }
}
