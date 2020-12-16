import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

/// Fork https://api.flutter.dev/flutter/widgets/precacheImage.html
/// with change return logic
Future<ImageInfo> preLoadImages(
  ImageProvider provider,
  BuildContext context, {
  Size size,
  ImageErrorListener onError,
}) {
  final ImageConfiguration config =
      createLocalImageConfiguration(context, size: size);
  final Completer<ImageInfo> completer = Completer<ImageInfo>();
  final ImageStream stream = provider.resolve(config);
  ImageStreamListener listener;
  listener = ImageStreamListener(
    (ImageInfo image, bool sync) {
      if (!completer.isCompleted) {
        completer.complete(image);
      }
      // Give callers until at least the end of the frame to subscribe to the
      // image stream.
      // See ImageCache._liveImages
      SchedulerBinding.instance.addPostFrameCallback((Duration timeStamp) {
        stream.removeListener(listener);
      });
    },
    onError: (dynamic exception, StackTrace stackTrace) {
      stream.removeListener(listener);
      if (!completer.isCompleted) {
        completer.completeError(exception, stackTrace);
      }
    },
  );
  stream.addListener(listener);
  return completer.future;
}

class ImagePreloader extends StatelessWidget {
  final Map<dynamic, ImageProvider> providers;
  final Widget Function(
          BuildContext context, AsyncSnapshot<Map<dynamic, ImageInfo>> snapshot)
      builder;

  const ImagePreloader({Key key, this.providers, this.builder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<dynamic, ImageInfo>>(
      future: Future.wait(providers.entries.map((entry) => preLoadImages(
                  entry.value, context)
              .then((value) => MapEntry<dynamic, ImageInfo>(entry.key, value))
              .catchError(
                  (_) => MapEntry<dynamic, ImageInfo>(entry.key, null))))
          .then((value) => Map.fromEntries(value)),
      builder: (BuildContext context,
          AsyncSnapshot<Map<dynamic, ImageInfo>> snapshot) {
        return builder(context, snapshot);
      },
    );
  }
}
