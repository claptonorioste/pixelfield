import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:pixelfield/data/drift/drift_tables.dart';

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

const mockCollection = [
  {
    'id': 1,
    'name': 'Springbank 1992 #1234',
    'image': 'assets/images/wine.png',
    'description': 'Springbank 1992 #1234',
    'age': 18,
    'distillery': 'Springbank',
    'region': 'Scotland',
    'country': 'Scotland',
    'type': 'Single Malt',
    'age_statement': '18',
    'filled': 112,
    'bottle': 158,
    'cask_number': '1234',
    'ABV': 46,
    'size': '700ml',
    'finish': 'Sherry Cask',
    'video_url': 'https://www.youtube.com/',
    'tasting_notes': [
      {
        'id': '1',
        'author': 'John Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
      {
        'id': 'owner',
        'author': 'Jane Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
    ],
    'history': [
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
    ],
  },
  {
    'id': 1,
    'name': 'Springbank 1992 #1234',
    'image': 'assets/images/wine.png',
    'description': 'Springbank 1992 #1234',
    'age': 18,
    'distillery': 'Springbank',
    'region': 'Scotland',
    'country': 'Scotland',
    'type': 'Single Malt',
    'age_statement': '18',
    'filled': 112,
    'bottle': 158,
    'cask_number': '1234',
    'ABV': 46,
    'size': '700ml',
    'finish': 'Sherry Cask',
    'video_url': 'https://www.youtube.com/',
    'tasting_notes': [
      {
        'id': '1',
        'author': 'John Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
      {
        'id': 'owner',
        'author': 'Jane Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
    ],
    'history': [
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
    ],
  },
  {
    'id': 1,
    'name': 'Springbank 1992 #1234',
    'image': 'assets/images/wine.png',
    'description': 'Springbank 1992 #1234',
    'age': 18,
    'distillery': 'Springbank',
    'region': 'Scotland',
    'country': 'Scotland',
    'type': 'Single Malt',
    'age_statement': '18',
    'filled': 112,
    'bottle': 158,
    'cask_number': '1234',
    'ABV': 46,
    'size': '700ml',
    'finish': 'Sherry Cask',
    'video_url': 'https://www.youtube.com/',
    'tasting_notes': [
      {
        'id': '1',
        'author': 'John Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
      {
        'id': 'owner',
        'author': 'Jane Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
    ],
    'history': [
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
    ],
  },
  {
    'id': 1,
    'name': 'Springbank 1992 #1234',
    'image': 'assets/images/wine.png',
    'description': 'Springbank 1992 #1234',
    'age': 18,
    'distillery': 'Springbank',
    'region': 'Scotland',
    'country': 'Scotland',
    'type': 'Single Malt',
    'age_statement': '18',
    'filled': 112,
    'bottle': 158,
    'cask_number': '1234',
    'ABV': 46,
    'size': '700ml',
    'finish': 'Sherry Cask',
    'video_url': 'https://www.youtube.com/',
    'tasting_notes': [
      {
        'id': '1',
        'author': 'John Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
      {
        'id': 'owner',
        'author': 'Jane Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
    ],
    'history': [
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
    ],
  },
  {
    'id': 1,
    'name': 'Springbank 1992 #1234',
    'image': 'assets/images/wine.png',
    'description': 'Springbank 1992 #1234',
    'age': 18,
    'distillery': 'Springbank',
    'region': 'Scotland',
    'country': 'Scotland',
    'type': 'Single Malt',
    'age_statement': '18',
    'filled': 112,
    'bottle': 158,
    'cask_number': '1234',
    'ABV': 46,
    'size': '700ml',
    'finish': 'Sherry Cask',
    'video_url': 'https://www.youtube.com/',
    'tasting_notes': [
      {
        'id': '1',
        'author': 'John Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
      {
        'id': 'owner',
        'author': 'Jane Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
    ],
    'history': [
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
    ],
  },
  {
    'id': 1,
    'name': 'Springbank 1992 #1234',
    'image': 'assets/images/wine.png',
    'description': 'Springbank 1992 #1234',
    'age': 18,
    'distillery': 'Springbank',
    'region': 'Scotland',
    'country': 'Scotland',
    'type': 'Single Malt',
    'age_statement': '18',
    'filled': 112,
    'bottle': 158,
    'cask_number': '1234',
    'ABV': 46,
    'size': '700ml',
    'finish': 'Sherry Cask',
    'video_url': 'https://www.youtube.com/',
    'tasting_notes': [
      {
        'id': '1',
        'author': 'John Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
      {
        'id': 'owner',
        'author': 'Jane Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
    ],
    'history': [
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
    ],
  },
  {
    'id': 1,
    'name': 'Springbank 1992 #1234',
    'image': 'assets/images/wine.png',
    'description': 'Springbank 1992 #1234',
    'age': 18,
    'distillery': 'Springbank',
    'region': 'Scotland',
    'country': 'Scotland',
    'type': 'Single Malt',
    'age_statement': '18',
    'filled': 112,
    'bottle': 158,
    'cask_number': '1234',
    'ABV': 46,
    'size': '700ml',
    'finish': 'Sherry Cask',
    'video_url': 'https://www.youtube.com/',
    'tasting_notes': [
      {
        'id': '1',
        'author': 'John Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
      {
        'id': 'owner',
        'author': 'Jane Doe',
        'notes': {'nose': 'Nose', 'palate': 'Palate', 'finish': 'Finish'},
      },
    ],
    'history': [
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
      {
        'label': 'Bottle',
        'title': 'Bottle',
        'description': 'Bottle',
        'attachments': ['assets/images/sample.csv', 'assets/images/wine.csv'],
      },
    ],
  },
];
