import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/mocks.dart';
import 'package:places/text_constans.dart';
import 'package:places/ui/widgets/primary_button.dart';

/// Add new [Sight] screen
class AddSightScreen extends StatefulWidget {
  @override
  _AddSightScreenState createState() => _AddSightScreenState();
}

class _AddSightScreenState extends State<AddSightScreen> {
  ESightType _selectedType;
  String _name;
  String _description;
  double _long;
  double _lat;

  bool get canSave =>
      _selectedType != null && _name != null && _lat != null && _long != null;

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
            style: Theme.of(context).textTheme.headline4.copyWith(
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
                                    Text(
                                      SightType(_selectedType)?.label ??
                                          notSelect,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5
                                          .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                          ),
                                    ),
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
                                    return _SelectTypeScreen();
                                  },
                                ),
                              ).then((value) {
                                setState(() {
                                  _selectedType = value;
                                });
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
                                  setState(() {
                                    _name = value;
                                  });
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
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        setState(() {
                                          _lat = double.parse(value);
                                        });
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
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        setState(() {
                                          _long = double.parse(value);
                                        });
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
                                  setState(() {
                                    _description = value;
                                  });
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
                    child: PrimaryButton(
                      child: Center(
                        child: Text(
                          save.toUpperCase(),
                        ),
                      ),
                      onPressed: canSave
                          ? () {
                              mocks.add(
                                Sight(
                                  name: _name,
                                  details: _description,
                                  lat: _lat,
                                  lon: _long,
                                  type: SightType(_selectedType),
                                  url:
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                                ),
                              );

                              Navigator.of(context).pop();
                            }
                          : null,
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
    Key key,
    @required this.label,
    @required this.child,
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
            style: Theme.of(context).textTheme.bodyText1.copyWith(
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
  final String hintText;
  final bool multiline;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String value) onChanged;

  const _PrimaryTextField({
    Key key,
    this.hintText,
    this.multiline = false,
    this.keyboardType,
    this.controller,
    this.focusNode,
    this.onChanged,
  }) : super(key: key);

  @override
  __PrimaryTextFieldState createState() => __PrimaryTextFieldState();
}

class __PrimaryTextFieldState extends State<_PrimaryTextField> {
  TextEditingController _controller;
  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_focusListener);
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
    _controller?.removeListener(_controllerListener);
    _focusNode?.removeListener(_focusListener);
    _focusNode?.dispose();
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      focusNode: _focusNode,
      keyboardType: widget.keyboardType,
      textInputAction: TextInputAction.next,
      maxLines: widget.multiline ? 4 : null,
      style: Theme.of(context).textTheme.headline5,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: widget.hintText.toLowerCase(),
        hintStyle: Theme.of(context).textTheme.headline5.copyWith(
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
        suffixIcon: _focusNode.hasFocus && _controller.text.isNotEmpty
            ? Align(
                widthFactor: 1,
                heightFactor: 1,
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 14,
                  ),
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: Material(
                      color: Theme.of(context).colorScheme.onBackground,
                      shape: CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        focusNode: FocusNode(
                          skipTraversal: true,
                        ),
                        onTap: () {
                          _controller.clear();
                        },
                        child: Center(
                          child: SizedBox(
                            width: 9,
                            height: 9,
                            child: IconWrapper(
                              color: Theme.of(context).colorScheme.surface,
                              child: CloseIcon(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : null,
      ),
    );
  }
}

/// Select [SightType] sub screen
class _SelectTypeScreen extends StatefulWidget {
  final ESightType initialType;

  const _SelectTypeScreen({Key key, this.initialType}) : super(key: key);

  @override
  __SelectTypeScreenState createState() => __SelectTypeScreenState();
}

class __SelectTypeScreenState extends State<_SelectTypeScreen> {
  SightType _selectedType;

  final Set<SightType> _variants = {
    SightType.cinema(),
    SightType.restaurant(),
    SightType.special(),
    SightType.theatre(),
    SightType.museum(),
    SightType.cafe(),
  };

  @override
  void initState() {
    super.initState();
    this._selectedType = SightType(
      widget.initialType,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        leading: TextButton(
          onPressed: () {
            Navigator.of(context).pop(null);
          },
          child: SizedBox(
            height: 12,
            child: IconWrapper(
              child: ArrowLeftIcon(),
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ),
        title: Text(
          addSightScreenCategoryLbl,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                for (var variant in _variants)
                  Column(
                    children: [
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16),
                        onTap: () {
                          setState(() {
                            _selectedType = variant;
                          });
                        },
                        trailing: _selectedType == variant
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  right: 8,
                                ),
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Center(
                                    child: SizedBox(
                                      height: 9,
                                      child: IconWrapper(
                                        child: CheckIcon(),
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : null,
                        title: Text(
                          variant.label,
                          style: Theme.of(context).textTheme.headline5.copyWith(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          height: 1,
                        ),
                      )
                    ],
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: PrimaryButton(
              child: Center(
                child: Text(
                  save.toUpperCase(),
                ),
              ),
              onPressed: _selectedType != null
                  ? () {
                      Navigator.of(context).pop(_selectedType.type);
                    }
                  : null,
            ),
          )
        ],
      ),
    );
  }
}
