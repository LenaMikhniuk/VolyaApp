import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:volyaApp/data/city_data.dart';
import 'package:volyaApp/shared.dart';
import 'package:volyaApp/util/city_dao.dart';
import 'package:volyaApp/util/db_weather_utils.dart';

class SearchBarScreen extends StatefulWidget {
  final VoidCallback onCurrentLocation;
  final Function(String term) onChosenCity;

  const SearchBarScreen({Key key, this.onCurrentLocation, this.onChosenCity})
      : super(key: key);
  @override
  _SearchBarScreenState createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  List<City> _searchHistory = [];
  String selectedTerm;
  CityDao cityDao = CityDao();

  void addSearchTerm(String term) async {
    _searchHistory.insert(0, City(term));
    await cityDao.insert(City(term));

    getHistory();
  }

  void deleteSearchTerm(City city) async {
    _searchHistory.remove(city);
    await cityDao.delete(city);
    setState(() {});
  }

  Future<void> getHistory() async {
    _searchHistory = await cityDao.getAllInstances();
    setState(() {});
  }

  FloatingSearchBarController controller;

  @override
  void initState() {
    super.initState();
    controller = FloatingSearchBarController();
    getHistory();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      queryStyle: FontsStyles.baseStyleDark,
      iconColor: AppColors.textColorDark,
      controller: controller,
      transition: CircularFloatingSearchBarTransition(),
      physics: BouncingScrollPhysics(),
      title: selectedTerm != null
          ? Text(
              selectedTerm,
              style: FontsStyles.baseStyleDark,
            )
          : null,
      hint: 'Enter a city name',
      hintStyle: FontsStyles.baseStyleDark,
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
              icon: const Icon(
                Icons.place,
                color: AppColors.textColorDark,
              ),
              onPressed: () {
                selectedTerm = null;
                widget.onCurrentLocation();
              }),
        ),
        FloatingSearchBarAction.searchToClear(),
      ],
      onSubmitted: (query) {
        addSearchTerm(query);
        selectedTerm = query;
        widget.onChosenCity(query);
        setState(() {});

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
                if (_searchHistory.isEmpty && controller.query.isEmpty) {
                  return Container(
                    height: 56,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      'Start searching',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: FontsStyles.baseStyleDark,
                    ),
                  );
                } else if (_searchHistory.isEmpty) {
                  return ListTile(
                    title: Text(
                      controller.query,
                      style: FontsStyles.baseStyleDark,
                    ),
                    leading: const Icon(
                      Icons.search,
                      color: AppColors.textColorDark,
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
                    children: _searchHistory.reversed
                        .take(6)
                        .map(
                          (city) => ListTile(
                            title: Text(
                              city.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: FontsStyles.baseStyleDark,
                            ),
                            leading: const Icon(
                              Icons.history,
                              color: AppColors.textColorDark,
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.clear,
                                  color: AppColors.textColorDark),
                              onPressed: () {
                                deleteSearchTerm(city);
                              },
                            ),
                            onTap: () {
                              setState(() {
                                selectedTerm = city.name;
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
