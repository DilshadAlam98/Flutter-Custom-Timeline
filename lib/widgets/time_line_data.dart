class StepperData {
  final String? headerTitle;
  final String? headerSubtitle;
  List<TimeLineSteps> timeLineData;

  StepperData({this.headerTitle, this.headerSubtitle, required this.timeLineData});
}

class TimeLineSteps<T> {
  const TimeLineSteps({
    required this.leftTitle,
    required this.rightTitle,
    this.rightSubtitle,
    this.leftSubtitle,
    this.value,
  });

  final String leftTitle;
  final String rightTitle;
  final String? rightSubtitle;
  final String? leftSubtitle;
  final T? value;
}
