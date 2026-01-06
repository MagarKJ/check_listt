// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:check_list/core/database/app_database.dart' as _i431;
import 'package:check_list/core/router/app_router.dart' as _i389;
import 'package:check_list/src/check_list_details/data/repo/checklist_item_repo.dart'
    as _i215;
import 'package:check_list/src/check_list_details/data/repo/checklist_item_repo_impl.dart'
    as _i134;
import 'package:check_list/src/home/data/repo/check_list_repo.dart' as _i1006;
import 'package:check_list/src/home/data/repo/check_list_repo_impl.dart'
    as _i210;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i389.AppRouter>(() => _i389.AppRouter());
    gh.lazySingleton<_i431.AppDatabase>(() => _i431.AppDatabase());
    gh.factory<_i215.CheckListItemRepo>(() => _i134.ChecklistItemRepoImpl());
    gh.factory<_i1006.CheckListRepo>(() => _i210.CheckListRepoImpl());
    return this;
  }
}
