
import 'dart:ui';

import 'package:flutter/material.dart';

class Skins{

  static var background_color = Colors.greenAccent;

  static void changeColors(MaterialAccentColor background_color){

    Skins.background_color = background_color;
  }
}
