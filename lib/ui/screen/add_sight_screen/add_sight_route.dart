import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:places/blocs/add_sight_form/add_sight_form_bloc.dart';
import 'package:places/data/interactor/interactor.dart';
import 'package:places/data/service/media_picker_service.dart';
import 'package:places/ui/screen/add_sight_screen/add_sight_screen.dart';
import 'package:provider/provider.dart';

class AddSightScreenRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => AddSightFormBloc(
            context.read<IPlaceInteractor>(),
            context.read<IMediaPickerService>(),
          ),
        )
      ],
      child: AddSightScreen(),
    );
  }
}
