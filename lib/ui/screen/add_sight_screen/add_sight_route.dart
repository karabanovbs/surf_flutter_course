import 'package:flutter/material.dart';
import 'package:mwwm/mwwm.dart';
import 'package:places/data/interactor/interactor.dart';
import 'package:places/ui/screen/add_sight_screen/add_sight_screen.dart';
import 'package:places/ui/screen/add_sight_screen/add_sight_wm.dart';
import 'package:provider/provider.dart';

class AddSightScreenRoute<T> extends MaterialPageRoute<T> {
  AddSightScreenRoute()
      : super(
          builder: (context) => const AddSightScreen(
            widgetModelBuilder: _createWm,
          ),
        );
}

WidgetModel _createWm(BuildContext context) {
  return AddSightWidgetModel(
    WidgetModelDependencies(),
    context.read<IPlaceInteractor>(),
  );
}
