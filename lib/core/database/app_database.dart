import 'dart:io';

import 'package:check_list/core/database/pretty_sql_interceptor.dart';
import 'package:check_list/src/check_list_details/data/model/check_list_items_table.dart';
import 'package:check_list/src/home/data/model/checklist_table.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'check_list.sqlite'));
    return NativeDatabase.createBackgroundConnection(file)
      ..interceptWith(PrettySqlInterceptor());
  });
}

@lazySingleton
@DriftDatabase(tables: [ChecklistTable, CheckListItemsTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      // Create all tables
      await m.createAll();
    },
    onUpgrade: (m, from, to) async {
      // Handle database upgrades if needed
    },
  );
}
