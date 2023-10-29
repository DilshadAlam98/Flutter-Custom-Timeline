import 'package:flutter/material.dart';

class MessageTimeline extends StatelessWidget {
  const MessageTimeline({
    Key? key,
    required this.message,
    this.subTitle,
    this.backGroundColor,
    this.headerXy,
    this.headerTitleStyle,
    this.headerSubTitleStyle,
  }) : super(key: key);

  final String message;
  final String? subTitle;
  final Color? backGroundColor;
  final double? headerXy;
  final TextStyle? headerTitleStyle;
  final TextStyle? headerSubTitleStyle;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: headerXy == null ? Alignment.center : Alignment(headerXy!, headerXy!),
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: backGroundColor ?? Colors.black.withOpacity(0.3),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: headerTitleStyle ?? const TextStyle(fontSize: 16),
              ),
            ),
            if (subTitle != null) ...[
              Flexible(
                child: Text(
                  subTitle!,
                  textAlign: TextAlign.center,
                  style: headerSubTitleStyle ?? const TextStyle(fontSize: 14),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
