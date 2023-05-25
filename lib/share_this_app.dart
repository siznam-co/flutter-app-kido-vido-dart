import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
class Share_app extends StatefulWidget {
  const Share_app({Key? key}) : super(key: key);

  @override
  State<Share_app> createState() => _Share_appState();
}

class _Share_appState extends State<Share_app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Share'),
      )
    );
  }
}
