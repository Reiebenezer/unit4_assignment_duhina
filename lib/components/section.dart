import 'package:flutter/material.dart';

class Section extends Container {
  Section({ 
    super.key,
    required Widget super.child,
    super.padding = const EdgeInsets.symmetric(vertical: 64.0, horizontal: 128.0)
  });
}