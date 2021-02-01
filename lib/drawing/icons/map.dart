import 'package:flutter/widgets.dart';
import 'package:svg_to_path_annotation/svg_to_path_annotation.dart';

part 'map.g.dart';

@SvgSource('res/svg/map.svg')
class MapIcon extends _MapIcon {
  const MapIcon();
}

@SvgSource('res/svg/map_full.svg')
class MapFullIcon extends _MapFullIcon {
  const MapFullIcon();
}
