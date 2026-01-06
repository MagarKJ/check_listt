import 'package:drift/drift.dart';

class CheckListItemsTable extends Table {
  TextColumn get id => text()();
  TextColumn get checkListId => text()();
  TextColumn get name => text()();
  BoolColumn get isChecked => boolean().withDefault(const Constant(false))();
  TextColumn get createdAt => text()();
  TextColumn get updatedAt => text()();

  @override
  Set<Column> get primaryKey => {id};
}
