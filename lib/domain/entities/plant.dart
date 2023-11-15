import 'package:flutter/material.dart';

class Plant {
  String plantName;
  HourFormat waterHour;
  String? description;
  Plant({
    required this.plantName,
    required this.waterHour,
    this.description = '',
  });
}
