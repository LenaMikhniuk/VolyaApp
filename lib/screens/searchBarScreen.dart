import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:volyaApp/shared.dart';

class SearchBarScreen extends StatefulWidget {
  final VoidCallback onCurrentLocation;
  final Function(String term) onChosenCity;

  const SearchBarScreen({Key key, this.onCurrentLocation, this.onChosenCity})
      : super(key: key);
  @override
  _SearchBarScreenState createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  static const historyLength = 5;
  List<String> _searchHistory = [];
  List<String> filteredSearchHistory;
  String selectedTerm;

  List<String> filteredSearchTerms({
    @required String filter,
  }) {
    if (filter != null && filter.isNotEmpty) {
      return _searchHistory.reversed
          .where((term) => term.startsWith(filter))
          .toList();
    } else {
      return _searchHistory.reversed.toList();
    }
  }

  void addSearchTerm(String term) {
    if (_searchHistory.contains(term)) {
      putSearchTermFirst(term);
      return;
    }
    _searchHistory.add(term);
    if (_searchHistory.length > historyLength) {
      _searchHistory.removeRange(0, _searchHistory.length - historyLength);
    }

    filteredSearchHistory = filteredSearchTerms(filter: null);
  }

  void deleteSearchTerm(String term) {
    _searchHistory.removeWhere((t) => t == term);
    filteredSearchHistory = filteredSearchTerms(filter: null);
  }

  void putSearchTermFirst(String term) {
    deleteSearchTerm(term);
    addSearchTerm(term);
  }

  FloatingSearchBarController controller;

  @override
  void initState() {
    super.initState();
    controller = FloatingSearchBarController();
    filteredSearchHistory = filteredSearchTerms(filter: null);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      queryStyle: FontsStyles.hintName,
      iconColor: AppColors.iconSearchBarColor,
      controller: controller,
      transition: CircularFloatingSearchBarTransition(),
      physics: BouncingScrollPhysics(),
      title: selectedTerm != null
          ? Text(
              selectedTerm,
              style: FontsStyles.selectedName,
            )
          : null,
      hint: 'Enter a city name',
      hintStyle: FontsStyles.hintName,
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
              icon: const Icon(
                Icons.place,
                color: AppColors.iconSearchBarColor,
              ),
              onPressed: () {
                selectedTerm = null;
                widget.onCurrentLocation();
              }),
        ),
        FloatingSearchBarAction.searchToClear(),
      ],
      onQueryChanged: (query) {
        setState(() {
          filteredSearchHistory = filteredSearchTerms(filter: query);
        });
      },
      onSubmitted: (query) {
        setState(() {
          addSearchTerm(query);
          selectedTerm = query;
        });
        controller.close();
      },
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            elevation: 4,
            child: Builder(
              builder: (context) {
                if (filteredSearchHistory.isEmpty && controller.query.isEmpty) {
                  return Container(
                    height: 56,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      'Start searching',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: FontsStyles.hintName,
                    ),
                  );
                } else if (filteredSearchHistory.isEmpty) {
                  return ListTile(
                    title: Text(
                      controller.query,
                      style: FontsStyles.hintName,
                    ),
                    leading: const Icon(
                      Icons.search,
                      color: AppColors.iconSearchBarColor,
                    ),
                    onTap: () {
                      setState(() {
                        addSearchTerm(controller.query);
                        selectedTerm = controller.query;
                        widget.onChosenCity(selectedTerm);
                      });
                      controller.close();
                    },
                  );
                } else {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: filteredSearchHistory
                        .map(
                          (term) => ListTile(
                            title: Text(
                              term,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: FontsStyles.hintName,
                            ),
                            leading: const Icon(
                              Icons.history,
                              color: AppColors.iconSearchBarColor,
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.clear,
                                  color: AppColors.iconSearchBarColor),
                              onPressed: () {
                                setState(() {
                                  deleteSearchTerm(term);
                                });
                              },
                            ),
                            onTap: () {
                              setState(() {
                                putSearchTermFirst(term);
                                selectedTerm = term;
                                widget.onChosenCity(selectedTerm);
                              });
                              controller.close();
                            },
                          ),
                        )
                        .toList(),
                  );
                }
              },
            ),
          ),
        );
      },
    );
  }
}