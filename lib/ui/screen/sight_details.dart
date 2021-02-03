import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/domain/sight.dart';
import 'package:places/res/typography.dart';

/// Sight details widget
class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({Key key, this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// body under appbar
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 64,
        leadingWidth: 64,

        /// back button
        leading: Container(
          padding: const EdgeInsets.all(16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 32,
              height: 32,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
        backgroundColor: Color(0x00000000),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            /// gallery
            _buildGallery(context),

            /// description
            _buildDescription(context),

            /// controls
            _buildControls(context)
          ],
        ),
      ),
    );
  }

  Widget _buildGallery(BuildContext context) {
    return Container(
      height: 360,
      padding: const EdgeInsets.only(bottom: 24),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              sight.url,
              fit: BoxFit.fitWidth,
              loadingBuilder:
                  (context, child, ImageChunkEvent loadingProgress) {
                if (loadingProgress == null) return child;
                return Align(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment(-1.1, 1),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Theme.of(context).colorScheme.onBackground,
                height: 8,
                width: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 24),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sight.name,
            style: Theme.of(context).textTheme.headline2.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
          Row(
            children: [
              Text(
                sight.type,
                style: Theme.of(context).textTheme.subtitle1.copyWith(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'закрыто до 09:00',
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Text(
              sight.details,
              style: Theme.of(context).textTheme.headline4.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildControls(BuildContext context) {
    print(Theme.of(context).primaryColor);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 48,
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.onPrimary,
                            BlendMode.srcIn,
                          ),
                          image: AssetImage('res/images/go.png'),
                        ),
                      ),
                    ),
                    Text(
                      'построить маршрут'.toUpperCase(),
                      style: Theme.of(context).textTheme.button.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 8),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                    height: 40,
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            margin: const EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Theme.of(context).colorScheme.secondary,
                                    BlendMode.srcIn),
                                image: AssetImage('res/images/calendar.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Запланировать',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                        ],
                      ),
                    )),
              ),
              Expanded(
                child: Container(
                  height: 40,
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Theme.of(context).colorScheme.secondary,
                                  BlendMode.srcIn),
                              image: AssetImage('res/images/heart.png'),
                            ),
                          ),
                        ),
                        Text(
                          'В избранное',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
