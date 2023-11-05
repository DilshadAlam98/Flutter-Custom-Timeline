import 'package:flutter/material.dart';

class TimeLineChild extends StatelessWidget {
  const TimeLineChild({
    Key? key,
    this.title,
    this.subtitle,
    this.tittleStyle,
    this.subtitleStyle,
  }) : super(key: key);

  final String? title;
  final String? subtitle;
  final TextStyle? tittleStyle;
  final TextStyle? subtitleStyle;

  @override
  Widget build(BuildContext context) {
    final rowChildren = <Widget>[
      Expanded(
        child: Text(
          title ?? "",
          style: tittleStyle ??
              const TextStyle(
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(children: rowChildren),
          Flexible(
            child: Text(
              subtitle ?? "",
              style: subtitleStyle ??
                  const TextStyle(
                    fontSize: 16,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
