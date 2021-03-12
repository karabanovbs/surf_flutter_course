import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:places/domain/sight.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/drawing/drawing.dart';
import 'package:places/helpers/distance_helper.dart';
import 'package:places/mocks.dart';
import 'package:places/res/text_constants.dart' as text_constants;
import 'package:places/ui/screen/filters_screen.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/widgets/search_bar.dart';
import 'package:places/ui/widgets/widgets.dart';

class SightSearchScreen extends StatefulWidget {
  final FiltersResult? filters;

  SightSearchScreen(this.filters);

  @override
  _SightSearchScreenState createState() => _SightSearchScreenState();
}

class _SightSearchScreenState extends State<SightSearchScreen> {
  late final TextEditingController controller;

  List<Sight> searchResult = [];
  List<String> searchHistory = [
    'Moon',
    'test1',
    'test2',
    'test3',
  ];

  @override
  void initState() {
    super.initState();
    controller = TextEditingController()..addListener(_searchListener);
  }

  void _search(String search) {
    if (search.trim().isNotEmpty) {
      print('search: $search');
      setState(() {
        searchHistory.add(search);
        searchResult = sights
            .where(
              (element) =>
                  element.name.toLowerCase().contains(
                        search.toLowerCase(),
                      ) &&
                  (widget.filters != null
                      ? widget.filters!.filter(element)
                      : true),
            )
            .toList();
      });
    }
  }

  void _searchListener() {
    if (controller.text.endsWith(' ')) {
      _search(controller.text);
    }
  }

  @override
  void dispose() {
    controller.removeListener(_searchListener);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Text(
          text_constants.sightListScreenTitle,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SearchBar(
              controller: controller,
              autoFocus: true,
              onEditingComplete: () {
                _search(controller.text);
              },
              action: ClearInputButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          if (searchHistory.isNotEmpty && controller.text.isEmpty)
            Expanded(
              child: _SearchHistory(
                searchHistory: searchHistory,
                clearHistory: () {
                  setState(() {
                    searchHistory = [];
                  });
                },
                remove: (search) {
                  setState(() {
                    searchHistory = searchHistory
                        .whereNot((element) => element == search)
                        .toList();
                  });
                },
                select: (search) {
                  setState(() {
                    controller.text = search;
                    _search(controller.text);
                  });
                },
              ),
            ),
          if (searchResult.isEmpty && controller.text.isNotEmpty)
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 50.83,
                    height: 48,
                    child: IconWrapper(
                      color: Theme.of(context).colorScheme.onSurface,
                      child: SearchIcon(),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    text_constants.sightSearchNotFoundLbl,
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    text_constants.sightSearchNotFoundDescriptionLbl,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                ],
              ),
            ),
          if (searchResult.isNotEmpty && controller.text.isNotEmpty)
            Expanded(
              child: _SightSearchResultList(
                searchResult: searchResult,
                search: controller.text,
                onPressed: (sight) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return SightDetails(
                          sight: sight,
                        );
                      },
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

class _SightSearchResultList extends StatelessWidget {
  final List<Sight> searchResult;
  final String search;
  final void Function(Sight sight)? onPressed;

  const _SightSearchResultList({
    Key? key,
    required this.searchResult,
    required this.search,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: searchResult.length,
      itemBuilder: (context, index) {
        return _SightSearchResultListItem(
          sight: searchResult[index],
          search: search,
          onPressed: () {
            onPressed?.call(
              searchResult[index],
            );
          },
        );
      },
      separatorBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 88,
          ),
          child: Container(
            height: 0.8,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        );
      },
    );
  }
}

class _SightSearchResultListItem extends StatelessWidget {
  final Sight sight;
  final String search;
  final void Function()? onPressed;

  const _SightSearchResultListItem({
    Key? key,
    required this.sight,
    required this.search,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  child: SizedBox(
                    height: 56,
                    width: 56,
                    child: Image.network(
                      sight.url,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                      loadingBuilder:
                          (context, child, ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Align(
                          alignment: Alignment.center,
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: SizedBox(
                    height: 56,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              // TODO: can be more effectively
                              children: [
                                TextSpan(
                                  text: sight.name.substring(
                                    0,
                                    sight.name
                                        .toLowerCase()
                                        .indexOf(search.toLowerCase()),
                                  ),
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                TextSpan(
                                  text: sight.name.substring(
                                    sight.name
                                        .toLowerCase()
                                        .indexOf(search.toLowerCase()),
                                    sight.name
                                            .toLowerCase()
                                            .indexOf(search.toLowerCase()) +
                                        search.length,
                                  ),
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                                TextSpan(
                                  text: sight.name.substring(
                                    sight.name
                                            .toLowerCase()
                                            .indexOf(search.toLowerCase()) +
                                        search.length,
                                    sight.name.length,
                                  ),
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ],
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: null,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            sight.type.label,
                            style:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryVariant,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SearchHistory extends StatefulWidget {
  final List<String> searchHistory;
  final void Function() clearHistory;
  final void Function(String search) remove;
  final void Function(String search) select;

  const _SearchHistory({
    Key? key,
    required this.searchHistory,
    required this.clearHistory,
    required this.remove,
    required this.select,
  }) : super(key: key);

  @override
  __SearchHistoryState createState() => __SearchHistoryState();
}

class __SearchHistoryState extends State<_SearchHistory> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Text(
              text_constants.sightSearchHistoryTitle.toUpperCase(),
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 48,
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () {
                      widget.select.call(widget.searchHistory[index]);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.searchHistory[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondaryVariant,
                                      ),
                                ),
                                IconButton(
                                  splashRadius: 10,
                                  padding: EdgeInsets.zero,
                                  icon: SizedBox(
                                    width: 12,
                                    height: 12,
                                    child: IconWrapper(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                      child: DeleteIcon(),
                                    ),
                                  ),
                                  onPressed: () {
                                    widget.remove
                                        .call(widget.searchHistory[index]);
                                  },
                                ),
                              ],
                            ),
                          ),
                          if (index != widget.searchHistory.length - 1)
                            Container(
                              height: 0.8,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            childCount: widget.searchHistory.length,
          ),
        ),
        SliverToBoxAdapter(
          child: TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
            onPressed: () {
              widget.clearHistory.call();
            },
            child: Text(text_constants.sightSearchClearHistoryButtonLbl),
          ),
        ),
      ],
    );
  }
}
