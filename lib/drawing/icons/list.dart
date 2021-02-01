import 'package:flutter/widgets.dart';
import 'package:svg_to_path_annotation/svg_to_path_annotation.dart';

part 'list.g.dart';

@SvgSource('res/svg/list.svg')
class ListIcon extends _ListIcon {
  const ListIcon();
}

@SvgSource('res/svg/list_full.svg')
class ListFullIcon extends _ListFullIcon {
  const ListFullIcon();
}
