import 'package:flutter/material.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/text_constants.dart' as text_constants;
import 'package:places/ui/widgets/widgets.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;

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
              print('skip');
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
          SizedBox(
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
                onPressed: () {},
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
