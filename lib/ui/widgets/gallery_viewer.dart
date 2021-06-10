import 'package:flutter/material.dart';
import 'package:places/ui/widgets/app_loader.dart';

class GalleryViewer extends StatefulWidget {
  final List<String> photos;

  const GalleryViewer({
    Key? key,
    required this.photos,
  }) : super(key: key);

  @override
  _GalleryViewerState createState() => _GalleryViewerState();
}

class _GalleryViewerState extends State<GalleryViewer> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      padding: const EdgeInsets.only(bottom: 24),
      child: Stack(
        children: [
          Positioned.fill(
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              itemCount: widget.photos.length,
              itemBuilder: (context, index) {
                return Image.network(
                  widget.photos[index],
                  fit: BoxFit.cover,
                  loadingBuilder:
                      (context, child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Align(
                      alignment: Alignment.center,
                      child: AppLoader(),
                    );
                  },
                );
              },
            ),
          ),
          Positioned(
            bottom: 0,
            right: -8,
            left: -8,
            child: AnimatedAlign(
              curve: Curves.easeOutExpo,
              alignment: Alignment(
                  -1 + 2 * (_currentPage / (widget.photos.length - 1)), 1),
              duration: Duration(milliseconds: 500),
              child: FractionallySizedBox(
                widthFactor: 1 / widget.photos.length,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Theme.of(context).colorScheme.onBackground,
                    height: 8,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
