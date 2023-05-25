import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:text_to_speech/text_to_speech.dart';

import '../../Lists/abc_list.dart';
import '../../Widgets/exitDialog.dart';
import '../../home.dart';

class Abc_with_shapes extends StatefulWidget {
  const Abc_with_shapes({Key? key}) : super(key: key);

  @override
  State<Abc_with_shapes> createState() => _Abc_with_shapesState();
}

class _Abc_with_shapesState extends State<Abc_with_shapes> {
  int index = 0;
  TextToSpeech tts = TextToSpeech();

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
                  image: AssetImage("images/background_3.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Center(
                child: Column(
                  /*mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,*/
                  children: [
                    SizedBox(height: 5.h),
                    Align(
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
                                    'images/buttons/left_button.png')),
                          ))

                      /*Container(
                        height: 70,
                        width: 70,
                        child: ListTile(
                          title: Center(
                            child: Image.asset(
                              'images/buttons/home_button.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          onTap: () {
                            // print("in on tap");
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context) => AlertDialog(
                                title: Text(
                                  "Back To Home Page..!",
                                  style: TextStyle(
                                    fontSize: 22.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                actions: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text("No"),
                                      ),
                                      SizedBox(width: 30.w),
                                      ElevatedButton(
                                        onPressed: () {
                                          */ /*Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Home(),
                                            ),
                                          );*/ /*
                                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>Home()), (route) => false);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                        ),
                                        child: Text("Yes"),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );

                            */ /*showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  backgroundColor: Colors.white,
                                  shape: const Border(),
                                  title: SizedBox(
                                    width: 70.sp,
                                    child: Column(
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
                                            Navigator.of(context).pop(true);
                                          },
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
                                                child: const Abc_with_shapes(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text("Yes"),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            );*/ /*
                          },
                        ),
                      )*/
                      ,
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Center(
                      child: Container(
                        height: 400.h,
                        width: 270.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border:
                              Border.all(color: Colors.orangeAccent, width: 3.w),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              //height: 250,
                              // width: 250,
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    child: index == 0
                                        ? Icon(Icons.arrow_back_ios_outlined,
                                            size: 40.sp,
                                            color: Colors.transparent)
                                        : Icon(Icons.arrow_back_ios_outlined,
                                            size: 40.sp),
                                    onTap: () {
                                      setState(
                                        () {
                                          if (index > 0) {
                                            index--;
                                          }
                                          /*else {
                                            Navigator.pushReplacement(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                alignment: Alignment.bottomCenter,
                                                duration: const Duration(
                                                    milliseconds: 600),
                                                child: const Home(),
                                              ),
                                            );
                                          }*/
                                        },
                                      );
                                    },
                                  ),
                                  Container(
                                    //height: 300,
                                    width: 150.w,
                                    child: ListTile(
                                      title: Center(
                                        child: Image.asset(
                                          abcd[index].image.toString(),
                                        ),
                                      ),
                                      onTap: () {
                                        setState(
                                          () {
                                            tts.speak(
                                                abcd[index].pronounce.toString());
                                            tts.setLanguage('en-US');
                                            double rate = 0.6;
                                            tts.setRate(rate);
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 40.sp,
                                    ),
                                    onTap: () {
                                      setState(
                                        () {
                                          if (index < 25) {
                                            index++;
                                          } else {
                                            Navigator.pushReplacement(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                alignment: Alignment.bottomCenter,
                                                duration: const Duration(
                                                    milliseconds: 600),
                                                child: const Home(),
                                              ),
                                            );
                                          }
                                        },
                                      );
                                    },
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 150.h,
                              width: 270.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    //color: Colors.green,
                                    //height: 100,
                                    width: 120.w,
                                    child: Container(
                                      //height: 100,
                                      child: ListTile(
                                        title: Center(
                                            child: Image.asset(
                                                abcd[index].f1image.toString())),
                                        onTap: () {
                                          setState(
                                            () {
                                              tts.speak(
                                                  abcd[index].f1name.toString());
                                              double rate = 0.6;
                                              tts.setRate(rate);
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 120.w,
                                    child: Container(
                                      // height: 100,
                                      child: ListTile(
                                        title: Center(
                                          child: Image.asset(
                                            abcd[index].f2image.toString(),
                                          ),
                                        ),
                                        onTap: () {
                                          setState(
                                            () {
                                              tts.speak(
                                                  abcd[index].f2name.toString());
                                              double rate = 0.6;
                                              tts.setRate(rate);
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        tts.speak(abcd[index]
                                            .pronounce_f1name
                                            .toString());
                                        tts.setLanguage('en-US');
                                        double rate = 0.6;
                                        tts.setRate(rate);
                                      },
                                    );
                                  },
                                  child: Text(
                                    abcd[index].f1name.toString(),
                                    style: TextStyle(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      tts.speak(abcd[index]
                                          .pronounce_f2name
                                          .toString());
                                      tts.setLanguage('en-US');
                                      double rate = 0.6;
                                      tts.setLanguage('en-US');
                                      tts.setRate(rate);
                                    });
                                  },
                                  child: Text(
                                    abcd[index].f2name.toString(),
                                    style: TextStyle(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
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
/*Scaffold(
body: SafeArea(
  child:   Padding(

    padding: const EdgeInsets.all(8.0),

    child:   Column(

  mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Container(
          height: 320,
          width: 340,
         // color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              IconButton(icon: Icon(Icons.navigate_before), onPressed: () { setState(() {

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
              Container(
                height: 300,
                width: 230,
                child: ListTile(
                  title: Center(child: Image.asset(abcd[index].image.toString() )),
                  onTap: (){ setState(() {
                    tts.speak(abcd[index].pronounce.toString());
                    double rate = 0.6;
                    tts.setRate(rate); ;});},



                ),
              ),
              IconButton(icon: Icon(Icons.navigate_next), onPressed: () {

                setState(() { if(index<25){index++ ;

                }else{
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
                });},),
            ],
          ),



        ),



        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(



            child: Row(

mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [



                Container(



                  //color: Colors.green,



                  height: 250,



                  width: 160,



                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        child: ListTile(

                          title:Center(child: Image.asset(abcd[index].f1image.toString() )),


                          onTap: (){ setState(() {
                            tts.speak(abcd[index].f1name.toString());
                            double rate = 0.6;
                            tts.setRate(rate); ;});},
                        ),
                      ),
                      TextButton(onPressed: (){ setState(() {
                        tts.speak(abcd[index].pronounce_f1name.toString());
                        double rate = 0.6;
                        tts.setRate(rate) ;});},child: Text(abcd[index].f1name.toString())    ,),
                    ],
                  ),







                ),



                Container(



//                  color: Colors.blue,



                  height: 250,



                  width: 160,



                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        child: ListTile(
title:Center(child: Image.asset(abcd[index].f2image.toString() )),
                          onTap: (){ setState(() {
                            tts.speak(abcd[index].f2name.toString());
                            double rate = 0.6;
                            tts.setRate(rate); ;});},
                        ),
                      ),
        TextButton(onPressed: (){ setState(() {
          tts.speak(abcd[index].pronounce_f2name.toString());
          double rate = 0.6;
          tts.setRate(rate); ;});},child: Text(abcd[index].f2name.toString())    ,),
                    ],
                  ),



                )



              ],



            ),



          ),
        ),



      ],



    ),

  ),
),
    );*/
