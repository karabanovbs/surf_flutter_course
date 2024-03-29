import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:places/blocs/add_sight_form/add_sight_form_bloc.dart';
import 'package:places/domain/sight.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/text_constants.dart';
import 'package:places/ui/screen/select_type_screen.dart';
import 'package:places/ui/widgets/primary_button.dart';
import 'package:places/ui/widgets/widgets.dart';

/// Add new [Sight] screen
class AddSightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        leadingWidth: 75,
        leading: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.only(left: 16),
            ),
          ),
          child: Text(
            cancel,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          addSightScreenTitle,
        ),
      ),
      body: LayoutBuilder(builder: (context, viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  SizedBox(
                    height: 72 + 24 * 2,
                    child: BlocBuilder<AddSightFormBloc, AddSightFormState>(
                      buildWhen: (previous, current) =>
                          previous.photos.length != current.photos.length,
                      builder: (context, addSightFormState) {
                        var _photos = addSightFormState.photos;
                        return ListView.separated(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 24,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemCount: _photos.length + 1,
                          itemBuilder: (BuildContext context, int index) {
                            if (index == 0) {
                              return AddPhoto(
                                onPressed: () async {
                                  var result =
                                      await showDialog<SelectPhotoType>(
                                    context: context,
                                    builder: (BuildContext dialogContext) {
                                      return SelectPhotoDialog();
                                    },
                                  );
                                  if (result != null) {
                                    BlocProvider.of<AddSightFormBloc>(context)
                                        .add(AddSightFormEvent.loadPhoto(
                                            result));
                                  }
                                },
                              );
                            }

                            return RemovablePhoto(
                              photo: MemoryImage(_photos[index - 1]),
                              onRemove: () {
                                BlocProvider.of<AddSightFormBloc>(context).add(
                                  AddSightFormEvent.removePhoto(
                                    _photos[index - 1],
                                  ),
                                );
                              },
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 16,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// TYPE
                        _FormField(
                          label: addSightScreenCategoryLbl,
                          child: TextButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BlocBuilder<AddSightFormBloc,
                                            AddSightFormState>(
                                        buildWhen: (previous, current) =>
                                            previous.selectedType !=
                                            current.selectedType,
                                        builder: (context, addSightFormState) {
                                          var state =
                                              addSightFormState.selectedType;
                                          return Text(
                                            state != null
                                                ? SightType(state).label
                                                : notSelect,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                ),
                                          );
                                        }),
                                    SizedBox(
                                      height: 12,
                                      child: IconWrapper(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground,
                                        child: ArrowRightIcon(),
                                      ),
                                    ),
                                  ],
                                ),
                                // Divider(),
                              ],
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SelectSightTypeScreen();
                                  },
                                ),
                              ).then((value) {
                                BlocProvider.of<AddSightFormBloc>(context).add(
                                  AddSightFormEvent.changeSelectedType(
                                    value,
                                  ),
                                );
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Divider(
                            height: 1,
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),

                        /// NAME
                        _FormField(
                          label: addSightScreenNameLbl,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            child: SizedBox(
                              height: 40,
                              child: _PrimaryTextField(
                                hintText: addSightScreenNameHint,
                                onChanged: (value) {
                                  BlocProvider.of<AddSightFormBloc>(context)
                                      .add(
                                    AddSightFormEvent.changeName(
                                      value,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),

                        /// POSITION
                        Row(
                          children: [
                            /// LAT
                            Expanded(
                              child: _FormField(
                                label: addSightScreenLatLbl,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: SizedBox(
                                    height: 40,
                                    child: _PrimaryTextField(
                                      hintText: addSightScreenLatHint,
                                      numeric: true,
                                      onChanged: (value) {
                                        BlocProvider.of<AddSightFormBloc>(
                                                context)
                                            .add(
                                          AddSightFormEvent.changeLat(
                                            double.parse(value),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            /// LON
                            Expanded(
                              child: _FormField(
                                label: addSightScreenLonLbl,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: SizedBox(
                                    height: 40,
                                    child: _PrimaryTextField(
                                      hintText: addSightScreenLonHint,
                                      numeric: true,
                                      onChanged: (value) {
                                        BlocProvider.of<AddSightFormBloc>(
                                                context)
                                            .add(
                                          AddSightFormEvent.changeLong(
                                            double.parse(value),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        /// POSITION ON MAP
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            focusNode: FocusNode(skipTraversal: true),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                addSightScreenOnMapSelectLbl,
                              ),
                            ),
                          ),
                        ),

                        /// DESCRIPTION
                        _FormField(
                          label: addSightScreenDescriptionLbl,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            child: SizedBox(
                              height: 80,
                              child: _PrimaryTextField(
                                multiline: true,
                                hintText: addSightScreenDescriptionHint,
                                onChanged: (value) {
                                  BlocProvider.of<AddSightFormBloc>(context)
                                      .add(
                                    AddSightFormEvent.changeDescription(
                                      value,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    child: BlocBuilder<AddSightFormBloc, AddSightFormState>(
                      builder: (context, addSightFormState) {
                        var canSave = addSightFormState.canSave;
                        return PrimaryButton(
                          child: Center(
                            child: Text(
                              save.toUpperCase(),
                            ),
                          ),
                          onPressed: (canSave)
                              ? () {
                                  BlocProvider.of<AddSightFormBloc>(context)
                                      .add(
                                    AddSightFormEvent.save(),
                                  );

                                  Navigator.of(context).pop();
                                }
                              : null,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

/// Titled foam field
class _FormField extends StatelessWidget {
  final String label;
  final Widget child;

  const _FormField({
    Key? key,
    required this.label,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            label.toUpperCase(),
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        child,
      ],
    );
  }
}

/// Styled text input
class _PrimaryTextField extends StatefulWidget {
  final String? hintText;
  final bool multiline;
  final bool numeric;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String value)? onChanged;

  const _PrimaryTextField({
    Key? key,
    this.hintText,
    this.multiline = false,
    this.numeric = false,
    this.controller,
    this.focusNode,
    this.onChanged,
  }) : super(key: key);

  @override
  __PrimaryTextFieldState createState() => __PrimaryTextFieldState();
}

class __PrimaryTextFieldState extends State<_PrimaryTextField> {
  late TextEditingController _controller;
  FocusNode? _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode!.addListener(_focusListener);
    _controller.addListener(_controllerListener);
  }

  _focusListener() {
    setState(() {});
  }

  _controllerListener() {
    setState(() {});
  }

  @override
  void dispose() {
    _controller.removeListener(_controllerListener);
    _focusNode?.removeListener(_focusListener);
    _focusNode?.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      focusNode: _focusNode,
      keyboardType: widget.numeric ? TextInputType.number : TextInputType.text,
      inputFormatters: [
        if (widget.numeric) FilteringTextInputFormatter.digitsOnly
      ],
      textInputAction: TextInputAction.next,
      maxLines: widget.multiline ? 4 : null,
      style: Theme.of(context).textTheme.headline5,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: widget.hintText!.toLowerCase(),
        hintStyle: Theme.of(context).textTheme.headline5!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        suffixIcon: _focusNode!.hasFocus && _controller.text.isNotEmpty
            ? Align(
                widthFactor: 1,
                heightFactor: 1,
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 14,
                  ),
                  child: ClearInputButton(
                    onPressed: () {
                      _controller.clear();
                    },
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
