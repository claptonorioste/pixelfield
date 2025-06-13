import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:pixelfield/data/drift/drift_tables.dart';
import 'package:pixelfield/data/drift/mock_data.dart';

part 'drift_database.g.dart';

late AppDatabase appDb;

@DriftDatabase(tables: [Collection])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'pixelfield.db'));

  @override
  int get schemaVersion => 1;
}

Future<void> initDb() async {
  appDb = AppDatabase();
  if ((await appDb.select(appDb.collection).get()).isEmpty) {
    await seedDb();
  }
}

Future<void> seedDb() async {
  for (var item in mockCollection) {
    await appDb
        .into(appDb.collection)
        .insert(
          CollectionCompanion(
            name: Value(item['name'] as String),
            image: Value(item['image'] as String),
            description: Value(item['description'] as String),
            age: Value(item['age'] as int),
            distillery: Value(item['distillery'] as String),
            region: Value(item['region'] as String),
            country: Value(item['country'] as String),
            type: Value(item['type'] as String),
            ageStatement: Value(item['age_statement'] as String),
            filled: Value(item['filled'] as int),
            bottle: Value(item['bottle'] as int),
            caskNumber: Value(item['cask_number'] as String),
            abv: Value(item['ABV'] as int),
            size: Value(item['size'] as String),
            finish: Value(item['finish'] as String),
            videoUrl: Value(item['video_url'] as String),
            tastingNotes: Value(jsonEncode(item['tasting_notes'])),
            history: Value(jsonEncode(item['history'])),
          ),
        );
  }
}
