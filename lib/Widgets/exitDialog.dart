import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quiz/Quiz/quiz_type.dart';

import '../home.dart';

Future<bool> showExitPopup(context) async{
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        Size size = MediaQuery.of(context).size;
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          content: Container(
            height: size.height*0.15,
            // height: 90.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Do you really want to exit?"),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          print('yes selected');
                          exit(0);
                        },
                        child: Text("Yes"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[700]),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print('no selected');
                            Navigator.of(context).pop();
                          },
                          child: Text("No", style: TextStyle(color: Colors.black)),
                          style:
                          // ElevatedButton.styleFrom(
                          //   primary: Colors.white,
                          // ),
                          ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      side: BorderSide(color: Colors.green)
                                  )
                              )
                          )
                        ))
                  ],
                )
              ],
            ),
          ),
        );
      });
}
Future<bool> showExitPopup1(context) async{
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        Size size = MediaQuery.of(context).size;
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          content: Container(
            height: size.height*0.15,
            // height: 90.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Do you really want to exit?"),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // print('yes selected');
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>Home()), (route) => false);
                          // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>Quiz_type()));
                        },
                        child: Text("Yes"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[700]),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              print('no selected');
                              Navigator.of(context).pop();
                            },
                            child: Text("No", style: TextStyle(color: Colors.black)),
                            style:
                            // ElevatedButton.styleFrom(
                            //   primary: Colors.white,
                            // ),
                            ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                        side: BorderSide(color: Colors.green)
                                    )
                                )
                            )
                        ))
                  ],
                )
              ],
            ),
          ),
        );
      });
}