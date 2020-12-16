import 'package:flutter/material.dart';
import 'package:places/widgets/preload_images.dart';

class ImageLoader extends StatelessWidget {
  final String url;

  const ImageLoader({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImagePreloader(
      providers: {
        url: NetworkImage(url),
      },
      builder: (context, snapshot) {
        /// loading
        if (snapshot.connectionState != ConnectionState.done) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        /// image
        if (snapshot.hasData) {
          return RawImage(
              image: snapshot.data[url].image,
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter);
        }
        return Container();
      },
    );
  }
}
