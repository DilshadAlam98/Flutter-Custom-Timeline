import 'package:flutter/material.dart';

class TimeLineIndicator extends StatelessWidget {
  const TimeLineIndicator({Key? key, this.time}) : super(key: key);

  final String? time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          // color: Colors.white.withOpacity(0.2),
          width: 3,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          time ?? "",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
