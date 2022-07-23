import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/exercice.dart';

Future<Database> createDatabase() {
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'exercicio.db');
    return openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE exercicios('
          'id INTEGER PRIMARY KEY,'
          'exercicio TEXT,'
          'series TEXT)');
    }, version: 1);
  });
}

Future<int> save(Exercicio, exercicio) {
  return createDatabase().then((db) {
    final Map<String, dynamic> exercicioMap = {};

    exercicioMap['exercicio'] = exercicio.exercicio;
    exercicioMap['series'] = exercicio.series;

    return db.insert('exercicio', exercicioMap);
  });
}

Future<List<Exercicio>> findAll() {
  return createDatabase().then((db) {
    return db.query('exercicio').then((maps) {
      final List<Exercicio> exercicios = [];
      for (Map<String, dynamic> map in maps) {
        final Exercicio exercicio = Exercicio(
          map['id'],
          map['exercicio'],
          map['series'],
        );
        exercicios.add(exercicio);
      }
      return exercicios;
    });
  });
}
