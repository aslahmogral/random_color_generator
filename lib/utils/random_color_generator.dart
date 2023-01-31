import 'dart:core';
import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorGenerator{
  var  generatedColor = Random().nextInt(Colors.primaries.length);
}