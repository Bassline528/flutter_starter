// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/data/datasources/auth_data_source.dart' as _i4;
import '../../features/auth/data/repositories/auth_repository_impl.dart' as _i6;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i5;
import '../theme/app_theme.dart' as _i3;
import 'http_client.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppTheme>(_i3.AppTheme());
    gh.lazySingleton<_i4.AuthDataSource>(() => _i4.AuthService());
    gh.lazySingleton<_i5.AuthRepository>(
        () => _i6.AuthRepositoryImpl(gh<_i4.AuthDataSource>()));
    gh.singleton<_i7.DioClient>(_i7.DioClient());
    return this;
  }
}
