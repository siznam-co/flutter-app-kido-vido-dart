import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quiz/Learning/learning_types.dart';
import 'package:new_quiz/Quiz/quiz_type.dart';
import 'package:new_quiz/setting.dart';
import 'package:new_quiz/share_this_app.dart';
import 'package:page_transition/page_transition.dart';
import 'package:share_plus/share_plus.dart';

import 'Quiz/quiz.dart';
import 'Widgets/exitDialog.dart';
import 'model/lis_questions.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () =>showExitPopup(context),
      child: Scaffold(
          key: _key,
          drawer: Drawer(
              child: ListView(padding: EdgeInsets.zero, children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/drawer_background.png'),
                        fit: BoxFit.fill)),
                child: Container(
                    height: 50.h,
                    width: 50.w,
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                  child: Container(
                                      height: 30,
                                      child: Image.asset(
                                          'images/buttons/close_drawer.png')),
                                  onTap: () {
                                    Navigator.pop(context);
                                  }),
                              SizedBox(width: 10.w),
                              Container(
                                  height: 50.h,
                                  child: Image.asset('images/kids_learning.png'))
                            ])))),
            ListTile(
                title: Row(children: [
                  Icon(Icons.settings),
                  SizedBox(width: 20.w),
                  Text('Settings')
                ]),
                onTap: () {
                  /*Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          alignment: Alignment.bottomCenter,
                          duration: Duration(milliseconds: 300),
                          child: Setting()));*/
                }),
            ListTile(
                title: Row(
                  children: [
                    Icon(Icons.share),
                    SizedBox(width: 20.w),
                    Text('Share')
                  ],
                ),
                onTap: () {
                  Share.share('Check this out https://play.google.com/store/apps/details?id=com.siznam.kidoVido', subject: 'Share it with your friends');
                  /*Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          alignment: Alignment.bottomCenter,
                          duration: Duration(milliseconds: 300),
                          child: Share_app()));*/
                })
          ])),
          body: Container(
            height: size.height,
            width: size.width,
            child: Stack(
                //key: _key,
                children: [
                  ///-----------image-----------///
                  Container(
                      height: size.height,
                      width: size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/background_2.png"),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 8.r,
                                blurRadius: 6.r,
                                offset: Offset(0, 4))
                          ])),
                  SingleChildScrollView(
                    child: Column(children: [
                      Padding(
                          padding: EdgeInsets.only(left: 18.w, top: 40.h),
                          // padding: const EdgeInsets.only(left: 15, top: 25),
                          child: Row(children: [
                            InkWell(
                                onTap: () {
                                  _key.currentState!.openDrawer();
                                },
                                child: Container(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Image.asset(
                                        'images/buttons/menu_button.png'))),
                            SizedBox(width: 30.w),
                            Container(
                                height: 50.h,
                                width: 84.w,
                                child: Image.asset('images/Kids.png')),
                            Container(
                                height: 50.h,
                                width: 175.w,
                                child: Image.asset('images/Learning.png'))
                          ])),
                      Center(
                          child: Container(
                              height: 500.h,
                              width: 270.w,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 1,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Column(children: [
                                      SizedBox(height: 70.h),
                                      ListTile(
                                          subtitle: Container(
                                            height: 160.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30.r),
                                                //border: Border.all(color: Colors.black),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.2),
                                                      spreadRadius: 2.r,
                                                      blurRadius: 4.r,
                                                      offset: const Offset(0, 2))
                                                ]),
                                            child: Image.asset(
                                              "images/learn.png",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                          tileColor: Colors.grey,
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                PageTransition(
                                                    type: PageTransitionType.fade,
                                                    alignment: Alignment.bottomCenter,
                                                    duration:
                                                        Duration(milliseconds: 300),
                                                    child: Learning_types()));
                                          }),
                                      SizedBox(height: 70.h),
                                      ListTile(
                                          subtitle: Container(
                                              height: 160.h,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30.r),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.2),
                                                        spreadRadius: 2.r,
                                                        blurRadius: 4.r,
                                                        offset: Offset(0, 2))
                                                  ]),
                                              child: Image.asset(
                                                main_types[1].image!,
                                                fit: BoxFit.fill,
                                              )),
                                          tileColor: Colors.grey,
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
                                                    child: Quiz_type()));
                                          })
                                    ]);
                                  })))
                    ]),
                  )
                ]),
          )),
    );
  }
}
