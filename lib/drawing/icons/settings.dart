import 'package:flutter/widgets.dart';
import 'package:svg_to_path_annotation/svg_to_path_annotation.dart';

part 'settings.g.dart';

@SvgSource('res/svg/settings.svg')
class SettingsIcon extends _SettingsIcon {
  const SettingsIcon();
}

@SvgSource('res/svg/settings_fill.svg')
class SettingsFullIcon extends _SettingsFullIcon {
  const SettingsFullIcon();
}
