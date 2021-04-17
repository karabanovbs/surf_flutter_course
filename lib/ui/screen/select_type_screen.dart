import 'package:flutter/material.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/res/text_constants.dart';
import 'package:places/ui/widgets/widgets.dart';

/// Select [SightType] sub screen
class SelectSightTypeScreen extends StatefulWidget {
  final ESightType? initialType;

  const SelectSightTypeScreen({Key? key, this.initialType}) : super(key: key);

  @override
  _SelectSightTypeScreenState createState() => _SelectSightTypeScreenState();
}

class _SelectSightTypeScreenState extends State<SelectSightTypeScreen> {
  SightType? _selectedType;

  final Set<SightType> _variants = {
    SightType.theatre(),
    SightType.restaurant(),
    SightType.other(),
    SightType.theatre(),
    SightType.museum(),
    SightType.cafe(),
  };

  @override
  void initState() {
    super.initState();
    var _initialType = widget.initialType;
    if (_initialType != null) {
      this._selectedType = SightType(
        _initialType,
      );
    }
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
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
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
                Navigator.of(context).pop(_selectedType!.type);
              }
                  : null,
            ),
          )
        ],
      ),
    );
  }
}