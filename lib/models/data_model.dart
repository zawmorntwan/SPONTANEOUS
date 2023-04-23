import 'package:flutter/material.dart';

import '../data/notifiers/manage_notifiers.dart';
import '../functions/utils.dart';

class DataModel {
  DataModel({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });

  final String accessibility;
  final String activity;
  final String key;
  final String link;
  final int participants;
  final String price;
  final String type;

  Future<void> reset() async {
    await setDataNotifier();
  }

  void logData() {
    String current = fromMapToString(map: dataMapCurrent);
    debugPrint('Current Data : $current');
  }
}
