import 'package:drift/drift.dart';

class Collection extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get image => text()();
  TextColumn get description => text()();
  IntColumn get age => integer()();
  TextColumn get distillery => text()();
  TextColumn get region => text()();
  TextColumn get country => text()();
  TextColumn get type => text()();
  TextColumn get ageStatement => text()();
  IntColumn get filled => integer()();
  IntColumn get bottle => integer()();
  TextColumn get caskNumber => text()();
  IntColumn get abv => integer()();
  TextColumn get size => text()();
  TextColumn get finish => text()();
  TextColumn get videoUrl => text()();
  TextColumn get tastingNotes => text()();
  TextColumn get history => text()();
}
