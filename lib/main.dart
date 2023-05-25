import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fullscreen/fullscreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

void main() {
  runApp( MaterialApp(
    home: Main(),
    debugShowCheckedModeBanner: false,

  ));
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  void enterFullScreen(FullScreenMode fullScreenMode) async {
    await FullScreen.enterFullScreen(fullScreenMode);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          );
        },
        child: Stack(children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/background_1.jpg"),
                      fit: BoxFit.cover))),
          Center(
              child: Container(
                  height: 300,
                  child: Image.asset('images/Cute_boy_reading book.png'))),
          Padding(
            padding: EdgeInsets.only(bottom: 36),
            child: Align(
                alignment: Alignment.bottomCenter,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SvgPicture.asset('images/siznam_logo.svg'),
                  SizedBox(width: 7),
                  DefaultTextStyle(
                      style: GoogleFonts.aclonica(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                      child: AnimatedTextKit(
                          isRepeatingAnimation: true,
                          animatedTexts: [
                            WavyAnimatedText('Powered by',
                                speed: Duration(milliseconds: 140)),
                            WavyAnimatedText('Siznam & Co.',
                                speed: Duration(milliseconds: 165))
                          ]))
                ]))
          )
        ]));
  }
}

/*void main() {
  runApp(const MaterialApp(
    home: Main(),
    debugShowCheckedModeBanner: false,
  ));
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white12,
          ),
          Center(
            //padding: const EdgeInsets.only(top: 40),
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        alignment: Alignment.bottomCenter,
                        duration: const Duration(milliseconds: 300),
                        child: const Home()));
              },
              child: Text(
                "Let's Go >",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/
