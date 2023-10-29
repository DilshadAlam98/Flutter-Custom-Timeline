<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This Package is used to create a custom steppers inside the Header Message and Header Subtitle Node, It is a of wrapper of flutter_timeline.

## Features

* Easy Customization: Effortlessly customize the colors and alignment in the form of horizontal and vertical to suit your requirements.

* Flexible Size Control: Define the size of the Header Nodes(Message Nodes) according to your needs. Specify the width and height to ensure a perfect fit within your application's UI.

* Use it to show the sports timeline like Football, cricket, order details stepper etc.

* Default it cones with the Header Nodes. you can customise as per your need if Header nodes is not required in your requirements.

## Getting started

import package
```dart
import 'package:flutter_custom_timeline/package.dart';
```

## Usage:-
For Sports like Foot Ball, Cricket, and any other Events Steppers
 ```dart
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
      ),
    );
  }
}
 ```
 
![Sports Timeline](https://github.com/Shadil-rayeen/Flutter-Custom-Timeline/assets/84621229/eecedda4-70a2-4ea8-8479-7ee32042d9f2)



## timeLineBuilder-
No  other properties will work expect isHeaderNode if you give your own timeline. Inside you time line Widget properties will work
```agsl
 FlutterCustomTimeline(
        timeLineBuilder: (context, index) {
          return TimelineTile(
            isFirst: true,
            startChild: Text("Date"),
            endChild: Text("Title"),
          );
        },
        //   alignment: TimelineAlign.manual,
        //   lineXy: 0.3,
        //   headerXy: -0.7,
        steppers: getStepperData(),
      )
```

## Additional information

1. headerXy:- It is used to align the header nodes negative double value(-0.7) will align to left and positive value (0.4) will align to right
2. lineXy:- It is ued to align the stepper timeline, Alingment.manual will only work for lineXy
3. steppers:- It will take List of Steppers
4. isFirst:- Used to give the stepper at first
5. isLast:- Used to give the stepper line at last
6. isHeaderNode: bool is used to show the header Node default is 'true'
7. backgroundColor: It used to change the background color of all the steppers
8. afterLineStyle: It is used to style the line after the node
9. beforeLineStyle:- It is used to style the line before node
10. hasIndicator:- bool is used to show the indicator
11. headerStyle: used to style the header Text
12. subHeaderStyle: used to style the sub Header Text
13. headerBackgroundColor:- used to change the header background color
14. timeLineBuilder:- used to full customization your time line.
