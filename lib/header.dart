import 'package:flutter/material.dart';
import 'utils/theme.dart';

AppBar header() {
  return AppBar(
    title: Text('Red.', style: DefaultTheme.textTheme.titleMedium),
    actions: [
      TextButton(
          onPressed: () {
            print('About Me');
          },
          child: Text('About Me',
              style: TextStyle(color: DefaultTheme.colorScheme.onPrimary))),
      TextButton(
          onPressed: () {
            print('Biography');
          },
          child: Text(
            'Biography',
            style: TextStyle(color: DefaultTheme.colorScheme.onPrimary),
          ))
    ],
  );
}
