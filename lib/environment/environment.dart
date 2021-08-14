import 'package:places/environment/build_config.dart';
import 'package:places/environment/build_type.dart';

class Environment {
  final BuildConfig buildConfig;
  final BuildType buildType;

  static late Environment _environment;

  Environment._(
    this.buildConfig,
    this.buildType,
  );

  static void init(
    BuildConfig buildConfig,
    BuildType buildType,
  ) {
    _environment = Environment._(
      buildConfig,
      buildType,
    );
  }

  static Environment get instance => _environment;
}
