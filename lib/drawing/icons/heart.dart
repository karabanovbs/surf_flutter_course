import 'package:flutter/widgets.dart';
import 'package:svg_to_path_annotation/svg_to_path_annotation.dart';

part 'heart.g.dart';

@SvgSource('res/svg/heart.svg')
class HeartIcon extends _HeartIcon {
  const HeartIcon();
}

@SvgSource('res/svg/heart_full.svg')
class HeartFullIcon extends _HeartFullIcon {
  const HeartFullIcon();
}
