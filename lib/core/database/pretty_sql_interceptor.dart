import 'dart:async';
import 'dart:developer';

import 'package:drift/drift.dart';

class _Ansi {
  static const reset = '\x1B[0m';
  static const dim = '\x1B[2m';

  static const cyan = '\x1B[36m';
  static const green = '\x1B[32m';
  static const yellow = '\x1B[33m';
  static const red = '\x1B[31m';
  static const magenta = '\x1B[35m';
  static const blue = '\x1B[34m';
}

class PrettySqlInterceptor extends QueryInterceptor {
  PrettySqlInterceptor({this.useAnsi = true, this.maxArgWidth = 200});
  final bool useAnsi;
  final int maxArgWidth;

  String _d(String text) => useAnsi ? '${_Ansi.dim}$text${_Ansi.reset}' : text;

  Future<T> _time<T>(
    String verb,
    String sql,
    List<Object?> args,
    String color,
    FutureOr<T> Function() op, {
    void Function(T result, int ms)? onDone,
  }) async {
    final sw = Stopwatch()..start();

    log('$verb → ${sql.replaceAll("\n", " ")}');

    try {
      final r = await op();
      final ms = sw.elapsedMilliseconds;

      log('$verb ✓ in ${ms}ms');

      return r;
    } catch (e) {
      log('$verb ✗ $e');
      rethrow;
    }
  }

  // VERB COLORS
  static const _cSelect = _Ansi.cyan;
  static const _cInsert = _Ansi.green;
  static const _cUpdate = _Ansi.yellow;
  static const _cDelete = _Ansi.red;
  static const _cCustom = _Ansi.magenta;
  static const _cBatch = _Ansi.blue;

  @override
  Future<List<Map<String, Object?>>> runSelect(
    QueryExecutor executor,
    String statement,
    List<Object?> args,
  ) {
    return _time<List<Map<String, Object?>>>(
      'SELECT',
      statement,
      args,
      _cSelect,
      () => executor.runSelect(statement, args),
      onDone: (rows, ms) {
        log(_d('Rows: ${rows.length} · ${ms}ms'));
      },
    );
  }

  @override
  Future<int> runInsert(
    QueryExecutor executor,
    String statement,
    List<Object?> args,
  ) {
    return _time<int>(
      'INSERT',
      statement,
      args,
      _cInsert,
      () => executor.runInsert(statement, args),
      onDone: (id, ms) => log(_d('Insert id/rows: $id · ${ms}ms')),
    );
  }

  @override
  Future<int> runUpdate(
    QueryExecutor executor,
    String statement,
    List<Object?> args,
  ) {
    return _time<int>(
      'UPDATE',
      statement,
      args,
      _cUpdate,
      () => executor.runUpdate(statement, args),
      onDone: (count, ms) => log(_d('Rows changed: $count · ${ms}ms')),
    );
  }

  @override
  Future<int> runDelete(
    QueryExecutor executor,
    String statement,
    List<Object?> args,
  ) {
    return _time<int>(
      'DELETE',
      statement,
      args,
      _cDelete,
      () => executor.runDelete(statement, args),
      onDone: (count, ms) => log(_d('Rows deleted: $count · ${ms}ms')),
    );
  }

  @override
  Future<void> runCustom(
    QueryExecutor executor,
    String statement,
    List<Object?> args,
  ) {
    return _time<void>(
      'CUSTOM',
      statement,
      args,
      _cCustom,
      () => executor.runCustom(statement, args),
    );
  }

  @override
  Future<void> runBatched(
    QueryExecutor executor,
    BatchedStatements statements,
  ) {
    final summary = '${statements.statements.length} statement(s)';
    return _time<void>(
      'BATCH',
      summary,
      const [],
      _cBatch,
      () => executor.runBatched(statements),
    );
  }
}
