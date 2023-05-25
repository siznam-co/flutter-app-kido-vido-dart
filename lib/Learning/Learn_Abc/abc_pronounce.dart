import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:text_to_speech/text_to_speech.dart';

import '../../Lists/abc_list.dart';
import '../../Widgets/exitDialog.dart';
import '../../home.dart';

class Abc_pronounce extends StatefulWidget {
  const Abc_pronounce({Key? key}) : super(key: key);

  @override
  State<Abc_pronounce> createState() => _Abc_pronounceState();
}

class _Abc_pronounceState extends State<Abc_pronounce> {
  TextToSpeech tts = TextToSpeech();
  int index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tts.speak(abcd[0].pronounce.toString());
    double rate = 0.6;
    tts.setRate(rate);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Center(
              child: Column(
                children: [
                  SizedBox(height: 25.h),
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
                                  'images/buttons/home_button.png')),
                        )),
                  ),
                  SizedBox( height: 50.h ),
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 300.h,
                          width: 260.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                  color: Colors.orangeAccent, width: 3.w),
                              color: Colors.white),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 300.h,
                          // height: 370,
                          width: 260.w,
                          child: GestureDetector(
                            child: Image.asset(
                              alignment:Alignment.center,
                              abcd[index].image.toString(),
                              // fit: BoxFit.fill,
                              height: 170.h,
                              width: 170.w,
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
                      )
                    ],
                  ),
                  SizedBox(height: 48.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 80.h,
                        width: 80.w,
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
                                } else if (index > 0) {
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
                                tts.speak(
                                  abcd[index].pronounce.toString(),
                                );
                                tts.setLanguage('en-US');
                                double rate = 0.6;
                                tts.setRate(rate);
                              },
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 80.h,
                        child: FlatButton(
                          child: Center(
                            child: Image.asset(
                              'images/buttons/speak_button.png',
                            ),
                          ),
                          onPressed: () {
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
                      Container(
                        height: 80.h,
                        width: 80.w,
                        child: ListTile(
                          title: Center(
                            child: Image.asset(
                              'images/buttons/right_button.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          onTap: () {
                            setState(
                              () {
                                if (index < 25) {
                                  index++;
                                  tts.speak(abcd[index].pronounce.toString());
                                  tts.setLanguage('en-US');
                                  double rate = 0.6;
                                  tts.setRate(rate);
                                } else {
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
          ],
        ),
      ),
    );
  }
}
/*
Scaffold(
body:
Column(
children: [
SizedBox(height: 100,),
Container(
height: 300.h,
width: 200.w,
child: Image.asset(abcd[index].image.toString() )),

Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
InkWell(
child:Icon( Icons.navigate_before,size: 120,),
onTap:(){ setState(() {

if(index>0){

index-- ;
}
else{
print('objectooo');
}

});} ,),
InkWell(
child:Icon( Icons.play_circle_outline_sharp,size: 100,),
onTap:(){ setState(() {
tts.speak(abcd[index]. pronounce.toString());
double rate = 0.6;
tts.setRate(rate); ;});} ,),
InkWell(
child:Icon( Icons.navigate_next,size: 120,),
onTap:(){

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
});} ,),
],
)
*/
/* Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               IconButton(onPressed: (){print(index);
               setState(() {
                 index-- ;});}, icon:Icon( Icons.fast_rewind_outlined,size: 120,),color: Colors.red,),

               IconButton(onPressed: (){print(index);
               setState(() {
                 index++ ;});}, icon:Icon( Icons.play_circle_outline_sharp,size: 100,),color: Colors.red,),

               IconButton(onPressed: (){print(index);
               setState(() {
                 index++ ;});}, icon:Icon( Icons.fast_forward_outlined,size: 120,),color: Colors.red,),

           //  FloatingActionButton(onPressed: (){},child:Icon( Icons.fast_forward_outlined,size:30 ,),)
             ],
           ),
         ),*/
/*


]));*/
