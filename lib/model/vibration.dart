import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';

bool _canVibrate = true;
Future<void> wronganswervibrate() async {
  final Iterable<Duration> pauses = [
    const Duration(milliseconds: 300),
    const Duration(milliseconds: 800),
    const Duration(milliseconds: 300),
  ];
  bool canVibrate = await Vibrate.canVibrate;

  _canVibrate = canVibrate;
  _canVibrate
      ? debugPrint('This device can vibrate')
      : debugPrint('This device cannot vibrate');

  if (_canVibrate) {
    Vibrate.feedback(FeedbackType.warning);
  }
}

Future<void> rightanswervibrate() async {
  final Iterable<Duration> pauses = [
    const Duration(milliseconds: 300),
    const Duration(milliseconds: 800),
    const Duration(milliseconds: 300),
  ];
  bool canVibrate = await Vibrate.canVibrate;

  _canVibrate = canVibrate;
  _canVibrate
      ? debugPrint('This device can vibrate')
      : debugPrint('This device cannot vibrate');

  if (_canVibrate) {
    Vibrate.feedback(FeedbackType.success);
  }
}
