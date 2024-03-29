import 'package:flutter/material.dart';
import 'package:places/app.dart';
import 'package:places/environment/build_config.dart';
import 'package:places/environment/build_type.dart';
import 'package:places/environment/environment.dart';

void main() {
  _defineEnvironment(
    buildConfig: _setUpConfig(),
  );

  runApp(App());
}

void _defineEnvironment({
  required BuildConfig buildConfig,
}) {
  Environment.init(
    buildConfig,
    BuildType.dev,
  );
}

BuildConfig _setUpConfig() {
  return BuildConfig();
}

