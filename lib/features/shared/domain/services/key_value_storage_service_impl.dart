import 'package:flutter_starter/features/shared/domain/services/key_value_storage_service.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: KeyValueStorageService)
class KeyValueStorageServiceImpl extends KeyValueStorageService {
  Future<SharedPreferences> getSharedPrefs() {
    return SharedPreferences.getInstance();
  }

  @override
  Future<T?> getValue<T>(String key) async {
    final prefs = await getSharedPrefs();

    switch (T) {
      case int:
        return prefs.getInt(key) as T?;

      case String:
        return prefs.getString(key) as T?;

      default:
        throw UnimplementedError(
          'GET not implemented for type ${T.runtimeType}',
        );
    }
  }

  @override
  Future<bool> removeKey(String key) async {
    final prefs = await getSharedPrefs();
    return prefs.remove(key);
  }

  @override
  Future<void> setKeyValue<T>(String key, T value) async {
    final prefs = await getSharedPrefs();

    switch (T) {
      case int:
        await prefs.setInt(key, value as int);
        break;
      case String:
        await prefs.setString(key, value as String);
        break;
      default:
        throw UnimplementedError(
          'Set not implemented for type ${T.runtimeType}',
        );
    }
  }
}
