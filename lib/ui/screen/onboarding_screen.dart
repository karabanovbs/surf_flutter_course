import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:places/blocs/onboarding/onboarding_bloc.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/text_constants.dart' as text_constants;
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/widgets/widgets.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  bool _showStart = false;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        actions: [
          TextButton(
            onPressed: () {
              BlocProvider.of<OnboardingBloc>(context)
                  .add(OnboardingEvent.skip());

              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => SightListScreen(),
                ),
              );
            },
            child: Text(text_constants.skip),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: AnimatedPageIndicator(
              count: 3,
              controller: _pageController,
              child: OverscrollIndicatorNotificationAbsorb(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      _showStart = value == 2;
                    });
                  },
                  children: [
                    OnboardingScreenPage(
                      icon: TutorialWaymarkIcon(),
                      title: text_constants.onboardingScreenWelcomeTitle,
                      descroption:
                          text_constants.onboardingScreenWelcomeDescription,
                    ),
                    OnboardingScreenPage(
                      icon: TutorialBagIcon(),
                      title: text_constants.onboardingScreenCreateTitle,
                      descroption:
                          text_constants.onboardingScreenCreateDescription,
                    ),
                    OnboardingScreenPage(
                      icon: TutorialPointIcon(),
                      title: text_constants.onboardingScreenAddTitle,
                      descroption:
                          text_constants.onboardingScreenAddDescription,
                    ),
                  ],
                ),
              ),
            ),
          ),
          AnimatedOpacity(
            duration: Duration(
              milliseconds: 300,
            ),
            opacity: _showStart ? 1 : 0,
            child: SizedBox(
              height: 64,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: PrimaryButton(
                  child: Center(
                      child: Text(text_constants.onboardingScreenStartButtonLbl
                          .toUpperCase())),
                  onPressed: () {
                    BlocProvider.of<OnboardingBloc>(context)
                        .add(OnboardingEvent.complete());
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => SightListScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OnboardingScreenPage extends StatelessWidget {
  final String title;
  final String descroption;
  final Widget icon;

  const OnboardingScreenPage({
    Key? key,
    required this.title,
    required this.descroption,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 244,
        height: 246,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconWrapper(
              color: Theme.of(context).colorScheme.onBackground,
              child: SizedBox(
                width: 104,
                height: 104,
                child: icon,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              descroption,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: Theme.of(context).colorScheme.secondaryVariant),
            ),
          ],
        ),
      ),
    );
  }
}
