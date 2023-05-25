import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Text('Setting')
    ),);
  }
}
