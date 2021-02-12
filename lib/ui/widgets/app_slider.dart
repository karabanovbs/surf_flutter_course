import 'package:flutter/material.dart';

/// App range slider
class AppRangeSlider extends StatelessWidget {
  final double min;
  final double max;
  final int divisions;
  final double start;
  final double end;
  final void Function(double start, double end) onChange;

  const AppRangeSlider({
    Key key,
    @required this.min,
    @required this.max,
    this.divisions,
    this.start,
    this.end,
    this.onChange,
  })  : assert(max > min, 'max is not greater then min'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: RangeValues(start ?? min, end ?? max),
      min: min,
      max: max,
      divisions: divisions ?? (max - min).truncate(),
      onChanged: (RangeValues values) {
        onChange?.call(values.start, values.end);
      },
    );
  }
}

class AppRangeSliderTrackShape extends RoundedRectRangeSliderTrackShape {
  @override
  void paint(
      PaintingContext context,
      Offset offset, {
        RenderBox parentBox,
        SliderThemeData sliderTheme,
        Animation<double> enableAnimation,
        Offset startThumbCenter,
        Offset endThumbCenter,
        bool isEnabled = false,
        bool isDiscrete = false,
        TextDirection textDirection,
        double additionalActiveTrackHeight = 2,
      }) {
    super.paint(
      context,
      offset,
      additionalActiveTrackHeight: 0,
      parentBox: parentBox,
      startThumbCenter: startThumbCenter,
      endThumbCenter: endThumbCenter,
      enableAnimation: enableAnimation,
      textDirection: textDirection,
      sliderTheme: sliderTheme,
    );
  }
}
