import 'dart:core';
import 'dart:math';

import 'package:flutter/material.dart';

/// this is random generator color class
class RandomColorGenerator{
  ///we get the random integer against the length of list of  primary Colors
  int  generatedColor = Random().nextInt(Colors.primaries.length);

}
