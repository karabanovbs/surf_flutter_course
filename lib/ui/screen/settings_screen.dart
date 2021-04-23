import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/data/interactor/theme_interactor.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/text_constants.dart';
import 'package:places/ui/screen/visiting_screen.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          settingsScreenTitle,
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            Container(
              height: 56,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          darkThemeSettingsLbl,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        CupertinoSwitch(
                          value: Provider.of<ThemeSettingsInteractor>(context, listen: false)
                              .isDark,
                          onChanged: (value) {
                            Provider.of<ThemeSettingsInteractor>(context, listen: false)
                                .switchLightness();
                          },
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  )
                ],
              ),
            ),
            Container(
              height: 56,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          watchTutorialLbl,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder())),
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: IconWrapper(
                              color: Theme.of(context).colorScheme.primary,
                              child: InfoIcon(),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavBar(
        index: 3,
      ),
    );
  }
}
