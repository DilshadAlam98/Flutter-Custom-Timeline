import 'package:flutter/material.dart';
import 'package:flutter_custom_timeline/package.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FlutterCustomTimeline(
        alignment: TimelineAlign.manual,
        lineXy: 0.3,
        headerXy: -0.7,
        steppers: getStepperData(),
        rightNodeTitleStyle: const TextStyle(fontSize: 14),
        rightNodeSubtitleStyle: const TextStyle(fontSize: 18),
        leftNodeTitleStyle: const TextStyle(fontSize: 16, color: Colors.red),
      ),
    );
  }
}

List<StepperData> getStepperData() {
  return <StepperData>[
    StepperData(
      headerTitle: "Start of the First Half!!",
      timeLineData: [
        const TimeLineSteps(
          leftTitle: "4:30 AM",
          rightTitle: 'Foul!',
          rightSubtitle: 'David Luiz brings his opponent down.',
        ),
        const TimeLineSteps(
          rightTitle: 'Yellow',
          leftTitle: "4:30 AM",
          rightSubtitle: 'This yellow card was deserved.',
        ),
        const TimeLineSteps(
          leftTitle: "4:30 AM",
          rightTitle: 'Gooooaaaal!',
          rightSubtitle: 'Goal! Lionel Messi slams the ball into the open net from close range.',
        ),
        const TimeLineSteps(
          rightTitle: 'One more!',
          leftTitle: "4:30 AM",
          rightSubtitle: 'Piqué gets a yellow card for arguing with the referee.',
        ),
        const TimeLineSteps(
          leftTitle: "4:30 AM",
          rightTitle: 'Ouchh',
          rightSubtitle: 'Mesut Özil is writhing in pain and can now receive medical treatment.',
        ),
      ],
    ),
    StepperData(
      headerTitle: "Start of the Second Half!!",
      timeLineData: [
        const TimeLineSteps(
          leftTitle: "4:30 AM",
          rightTitle: 'Foul!',
          rightSubtitle: 'David Luiz brings his opponent down.',
        ),
        const TimeLineSteps(
          rightTitle: 'Yellow',
          leftTitle: "4:30 AM",
          rightSubtitle: 'This yellow card was deserved.',
        ),
        const TimeLineSteps(
          leftTitle: "4:30 AM",
          rightTitle: 'Gooooaaaal!',
          rightSubtitle: 'Goal! Lionel Messi slams the ball into the open net from close range.',
        ),
        const TimeLineSteps(
          rightTitle: 'One more!',
          leftTitle: "4:30 AM",
          rightSubtitle: 'Piqué gets a yellow card for arguing with the referee.',
        ),
        const TimeLineSteps(
          leftTitle: "4:30 AM",
          rightTitle: 'Ouchh',
          rightSubtitle: 'Mesut Özil is writhing in pain and can now receive medical treatment.',
        ),
      ],
    ),
  ];
}
