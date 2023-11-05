import 'package:flutter/material.dart';
import 'package:flutter_custom_timeline/widgets/message_timeline.dart';
import 'package:flutter_custom_timeline/widgets/time_line_child.dart';
import 'package:flutter_custom_timeline/widgets/time_line_data.dart';
import 'package:flutter_custom_timeline/widgets/time_line_indocator.dart';
import 'package:timeline_tile/timeline_tile.dart';

class FlutterCustomTimeline extends StatelessWidget {
  const FlutterCustomTimeline({
    super.key,
    required this.steppers,
    this.lineStyle,
    this.timeLineBuilder,
    this.indicatorStyle,
    this.backgroundColor,
    this.extendBodyBehindAppBar = true,
    this.indicatorXY = 0.5,
    this.alignment = TimelineAlign.center,
    this.lineXy,
    this.hasIndicator = true,
    this.afterLineStyle,
    this.isLast = false,
    this.isFirst = false,
    this.headerXy,
    this.headerBackgroundColor,
    this.headerTitleStyle,
    this.headerSubTitleStyle,
    this.isHeaderNode = true,
    this.rightNodeSubtitleStyle,
    this.rightNodeTitleStyle,
    this.leftNodeTitleStyle,
    this.leftNodeSubtitleStyle,
  });

  final List<StepperData> steppers;
  final IndicatorStyle? indicatorStyle;
  final TimelineTile Function(BuildContext context, int index)? timeLineBuilder;
  final LineStyle? lineStyle;
  final Color? backgroundColor;
  final Color? headerBackgroundColor;
  final bool extendBodyBehindAppBar;
  final double indicatorXY;
  final bool hasIndicator;
  final TimelineAlign alignment;
  final double? lineXy;
  final double? headerXy;
  final LineStyle? afterLineStyle;
  final bool isFirst;
  final bool isLast;
  final TextStyle? headerTitleStyle;
  final TextStyle? headerSubTitleStyle;
  final bool isHeaderNode;
  final TextStyle? leftNodeTitleStyle;
  final TextStyle? leftNodeSubtitleStyle;
  final TextStyle? rightNodeTitleStyle;
  final TextStyle? rightNodeSubtitleStyle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: false,
              itemCount: steppers.length,
              itemBuilder: (context, index) {
                final data = steppers[index].timeLineData;
                return CustomScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  slivers: <Widget>[
                    if (steppers[index].headerTitle != null && isHeaderNode) ...[
                      SliverList(
                        delegate: SliverChildListDelegate(
                          <Widget>[
                            MessageTimeline(
                              headerTitleStyle: headerTitleStyle,
                              headerSubTitleStyle: headerSubTitleStyle,
                              message: steppers[index].headerTitle!,
                              headerXy: headerXy,
                              backGroundColor: headerBackgroundColor,
                              subTitle: steppers[index].headerSubtitle,
                            ),
                          ],
                        ),
                      ),
                    ],
                    CustomTimeLine(
                      data: data,
                      timeLineBuilder: timeLineBuilder,
                      indicatorStyle: indicatorStyle,
                      lineStyle: lineStyle,
                      indicatorXY: indicatorXY,
                      alignment: alignment,
                      lineXY: lineXy,
                      hasIndicator: hasIndicator,
                      afterLineStyle: afterLineStyle,
                      isLast: isLast,
                      isFirst: isFirst,
                      leftNodeSubtitleStyle: leftNodeSubtitleStyle,
                      leftNodeTitleStyle: leftNodeTitleStyle,
                      rightNodeSubtitleStyle: rightNodeSubtitleStyle,
                      rightNodeTitleStyle: rightNodeTitleStyle,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTimeLine extends StatelessWidget {
  const CustomTimeLine({
    Key? key,
    this.data,
    this.indicatorStyle,
    this.timeLineBuilder,
    this.lineStyle,
    this.isLast = false,
    this.isFirst = false,
    this.hasIndicator = true,
    this.afterLineStyle,
    this.lineXY,
    this.indicatorXY = 0.5,
    this.alignment = TimelineAlign.center,
    required this.rightNodeTitleStyle,
    required this.rightNodeSubtitleStyle,
    required this.leftNodeTitleStyle,
    required this.leftNodeSubtitleStyle,
  }) : super(key: key);

  final List<TimeLineSteps>? data;
  final IndicatorStyle? indicatorStyle;
  final TimelineTile Function(BuildContext context, int index)? timeLineBuilder;
  final LineStyle? lineStyle;
  final LineStyle? afterLineStyle;
  final bool isFirst;
  final bool isLast;
  final bool hasIndicator;
  final double? lineXY;
  final double indicatorXY;
  final TimelineAlign alignment;
  final TextStyle? leftNodeTitleStyle;
  final TextStyle? leftNodeSubtitleStyle;
  final TextStyle? rightNodeTitleStyle;
  final TextStyle? rightNodeSubtitleStyle;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final event = data![index];

          final startChild = TimeLineChild(
            title: event.leftTitle,
            subtitle: event.leftSubtitle,
            tittleStyle: leftNodeTitleStyle,
            subtitleStyle: leftNodeSubtitleStyle,
          );
          final endChild = TimeLineChild(
            title: event.rightTitle,
            subtitle: event.rightSubtitle,
            tittleStyle: rightNodeTitleStyle,
            subtitleStyle: rightNodeSubtitleStyle,
          );

          return timeLineBuilder?.call(context, index) ??
              TimelineTile(
                isFirst: isFirst,
                isLast: isLast,
                afterLineStyle: afterLineStyle,
                alignment: alignment,
                startChild: startChild,
                endChild: endChild,
                hasIndicator: hasIndicator,
                lineXY: lineXY,
                indicatorStyle: indicatorStyle ??
                    IndicatorStyle(
                      width: 35,
                      height: 35,
                      indicatorXY: indicatorXY,
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      indicator: TimeLineIndicator(time: "${index + 1}"),
                      drawGap: true,
                    ),
                beforeLineStyle: lineStyle ?? const LineStyle(thickness: 3),
              );
        },
        childCount: data?.length,
      ),
    );
  }
}
