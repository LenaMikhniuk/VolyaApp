import 'package:sembast/sembast.dart';
import 'package:volyaApp/data/city_data.dart';
import 'package:volyaApp/util/db_weather_utils.dart';

class CityDao {
  static const String CITY_STORE_NAME = 'cities';
  final _cityStore = intMapStoreFactory.store(CITY_STORE_NAME);

  Future<Database> get _db async => await WeatherDataBase.instance.database;

  Future<int> insert(City city) async {
    final finder = Finder(
      filter: Filter.equals('name', city.name.toLowerCase().trim()),
    );
    final resultCity = await _cityStore.find(await _db, finder: finder);
    if (resultCity.isNotEmpty) {
      return 1;
    } else {
      return await _cityStore.add(
        await _db,
        city.toMap(),
      );
    }
  }

  Future<int> update(City city) async {
    final finder = Finder(
      filter: Filter.byKey(city.id),
    );
    return await _cityStore.update(
      await _db,
      city.toMap(),
      finder: finder,
    );
  }

  Future<int> delete(City city) async {
    final finder = Finder(
      filter: Filter.byKey(city.id),
    );
    return await _cityStore.delete(await _db, finder: finder);
  }

  Future<List<City>> getAllInstances() async {
    final recordSnapshots = await _cityStore.find(
      await _db,
    );
    return recordSnapshots.map((snapshot) {
      final city = City.fromMap(snapshot.value);
      // An ID is a key of a record from the database.
      city.id = snapshot.key;
      return city;
    }).toList();
  }
}
