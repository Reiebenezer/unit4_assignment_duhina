import 'package:flutter/material.dart';

import '../utils/theme.dart';

class MiniCard extends StatelessWidget {
  final String _image;
  final String _head;
  final String _desc;
  final bool _reverse;

  const MiniCard(
      {super.key,
      required String img,
      required String heading,
      required String description,
      bool reverse = false})
      : _image = img,
        _head = heading,
        _desc = description,
        _reverse = reverse;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      ClipOval(
          child: Image.asset(
        _image,
        width: 96,
        height: 96,
      )),
      const SizedBox(width: 12),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(_head,
              style: getTheme()
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: getTextColor())),
          const SizedBox(width: 12),
          Text(_desc, style: TextStyle(color: getTextColor()))
        ],
      )
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: _reverse ? widgets.reversed.toList() : widgets,
    );
  }
}
