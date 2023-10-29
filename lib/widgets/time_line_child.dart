import 'package:flutter/material.dart';

class TimeLineChild extends StatelessWidget {
  const TimeLineChild({
    Key? key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final rowChildren = <Widget>[
      Expanded(
        child: Text(
          title ?? "",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(children: rowChildren),
          Flexible(
            child: Text(
              subtitle ?? "",
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
