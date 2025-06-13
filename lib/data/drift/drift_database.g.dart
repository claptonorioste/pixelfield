// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
class $CollectionTable extends Collection
    with TableInfo<$CollectionTable, CollectionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CollectionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
    'image',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<int> age = GeneratedColumn<int>(
    'age',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _distilleryMeta = const VerificationMeta(
    'distillery',
  );
  @override
  late final GeneratedColumn<String> distillery = GeneratedColumn<String>(
    'distillery',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _regionMeta = const VerificationMeta('region');
  @override
  late final GeneratedColumn<String> region = GeneratedColumn<String>(
    'region',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _countryMeta = const VerificationMeta(
    'country',
  );
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
    'country',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ageStatementMeta = const VerificationMeta(
    'ageStatement',
  );
  @override
  late final GeneratedColumn<String> ageStatement = GeneratedColumn<String>(
    'age_statement',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _filledMeta = const VerificationMeta('filled');
  @override
  late final GeneratedColumn<int> filled = GeneratedColumn<int>(
    'filled',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bottleMeta = const VerificationMeta('bottle');
  @override
  late final GeneratedColumn<int> bottle = GeneratedColumn<int>(
    'bottle',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _caskNumberMeta = const VerificationMeta(
    'caskNumber',
  );
  @override
  late final GeneratedColumn<String> caskNumber = GeneratedColumn<String>(
    'cask_number',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _abvMeta = const VerificationMeta('abv');
  @override
  late final GeneratedColumn<int> abv = GeneratedColumn<int>(
    'abv',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sizeMeta = const VerificationMeta('size');
  @override
  late final GeneratedColumn<String> size = GeneratedColumn<String>(
    'size',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _finishMeta = const VerificationMeta('finish');
  @override
  late final GeneratedColumn<String> finish = GeneratedColumn<String>(
    'finish',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _videoUrlMeta = const VerificationMeta(
    'videoUrl',
  );
  @override
  late final GeneratedColumn<String> videoUrl = GeneratedColumn<String>(
    'video_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tastingNotesMeta = const VerificationMeta(
    'tastingNotes',
  );
  @override
  late final GeneratedColumn<String> tastingNotes = GeneratedColumn<String>(
    'tasting_notes',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _historyMeta = const VerificationMeta(
    'history',
  );
  @override
  late final GeneratedColumn<String> history = GeneratedColumn<String>(
    'history',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    image,
    description,
    age,
    distillery,
    region,
    country,
    type,
    ageStatement,
    filled,
    bottle,
    caskNumber,
    abv,
    size,
    finish,
    videoUrl,
    tastingNotes,
    history,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'collection';
  @override
  VerificationContext validateIntegrity(
    Insertable<CollectionData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
        _imageMeta,
        image.isAcceptableOrUnknown(data['image']!, _imageMeta),
      );
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('age')) {
      context.handle(
        _ageMeta,
        age.isAcceptableOrUnknown(data['age']!, _ageMeta),
      );
    } else if (isInserting) {
      context.missing(_ageMeta);
    }
    if (data.containsKey('distillery')) {
      context.handle(
        _distilleryMeta,
        distillery.isAcceptableOrUnknown(data['distillery']!, _distilleryMeta),
      );
    } else if (isInserting) {
      context.missing(_distilleryMeta);
    }
    if (data.containsKey('region')) {
      context.handle(
        _regionMeta,
        region.isAcceptableOrUnknown(data['region']!, _regionMeta),
      );
    } else if (isInserting) {
      context.missing(_regionMeta);
    }
    if (data.containsKey('country')) {
      context.handle(
        _countryMeta,
        country.isAcceptableOrUnknown(data['country']!, _countryMeta),
      );
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('age_statement')) {
      context.handle(
        _ageStatementMeta,
        ageStatement.isAcceptableOrUnknown(
          data['age_statement']!,
          _ageStatementMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ageStatementMeta);
    }
    if (data.containsKey('filled')) {
      context.handle(
        _filledMeta,
        filled.isAcceptableOrUnknown(data['filled']!, _filledMeta),
      );
    } else if (isInserting) {
      context.missing(_filledMeta);
    }
    if (data.containsKey('bottle')) {
      context.handle(
        _bottleMeta,
        bottle.isAcceptableOrUnknown(data['bottle']!, _bottleMeta),
      );
    } else if (isInserting) {
      context.missing(_bottleMeta);
    }
    if (data.containsKey('cask_number')) {
      context.handle(
        _caskNumberMeta,
        caskNumber.isAcceptableOrUnknown(data['cask_number']!, _caskNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_caskNumberMeta);
    }
    if (data.containsKey('abv')) {
      context.handle(
        _abvMeta,
        abv.isAcceptableOrUnknown(data['abv']!, _abvMeta),
      );
    } else if (isInserting) {
      context.missing(_abvMeta);
    }
    if (data.containsKey('size')) {
      context.handle(
        _sizeMeta,
        size.isAcceptableOrUnknown(data['size']!, _sizeMeta),
      );
    } else if (isInserting) {
      context.missing(_sizeMeta);
    }
    if (data.containsKey('finish')) {
      context.handle(
        _finishMeta,
        finish.isAcceptableOrUnknown(data['finish']!, _finishMeta),
      );
    } else if (isInserting) {
      context.missing(_finishMeta);
    }
    if (data.containsKey('video_url')) {
      context.handle(
        _videoUrlMeta,
        videoUrl.isAcceptableOrUnknown(data['video_url']!, _videoUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_videoUrlMeta);
    }
    if (data.containsKey('tasting_notes')) {
      context.handle(
        _tastingNotesMeta,
        tastingNotes.isAcceptableOrUnknown(
          data['tasting_notes']!,
          _tastingNotesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_tastingNotesMeta);
    }
    if (data.containsKey('history')) {
      context.handle(
        _historyMeta,
        history.isAcceptableOrUnknown(data['history']!, _historyMeta),
      );
    } else if (isInserting) {
      context.missing(_historyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CollectionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollectionData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      image: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      age: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}age'],
      )!,
      distillery: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}distillery'],
      )!,
      region: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}region'],
      )!,
      country: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}country'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      ageStatement: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}age_statement'],
      )!,
      filled: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}filled'],
      )!,
      bottle: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}bottle'],
      )!,
      caskNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cask_number'],
      )!,
      abv: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}abv'],
      )!,
      size: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}size'],
      )!,
      finish: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}finish'],
      )!,
      videoUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}video_url'],
      )!,
      tastingNotes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tasting_notes'],
      )!,
      history: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}history'],
      )!,
    );
  }

  @override
  $CollectionTable createAlias(String alias) {
    return $CollectionTable(attachedDatabase, alias);
  }
}

class CollectionData extends DataClass implements Insertable<CollectionData> {
  final int id;
  final String name;
  final String image;
  final String description;
  final int age;
  final String distillery;
  final String region;
  final String country;
  final String type;
  final String ageStatement;
  final int filled;
  final int bottle;
  final String caskNumber;
  final int abv;
  final String size;
  final String finish;
  final String videoUrl;
  final String tastingNotes;
  final String history;
  const CollectionData({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.age,
    required this.distillery,
    required this.region,
    required this.country,
    required this.type,
    required this.ageStatement,
    required this.filled,
    required this.bottle,
    required this.caskNumber,
    required this.abv,
    required this.size,
    required this.finish,
    required this.videoUrl,
    required this.tastingNotes,
    required this.history,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['image'] = Variable<String>(image);
    map['description'] = Variable<String>(description);
    map['age'] = Variable<int>(age);
    map['distillery'] = Variable<String>(distillery);
    map['region'] = Variable<String>(region);
    map['country'] = Variable<String>(country);
    map['type'] = Variable<String>(type);
    map['age_statement'] = Variable<String>(ageStatement);
    map['filled'] = Variable<int>(filled);
    map['bottle'] = Variable<int>(bottle);
    map['cask_number'] = Variable<String>(caskNumber);
    map['abv'] = Variable<int>(abv);
    map['size'] = Variable<String>(size);
    map['finish'] = Variable<String>(finish);
    map['video_url'] = Variable<String>(videoUrl);
    map['tasting_notes'] = Variable<String>(tastingNotes);
    map['history'] = Variable<String>(history);
    return map;
  }

  CollectionCompanion toCompanion(bool nullToAbsent) {
    return CollectionCompanion(
      id: Value(id),
      name: Value(name),
      image: Value(image),
      description: Value(description),
      age: Value(age),
      distillery: Value(distillery),
      region: Value(region),
      country: Value(country),
      type: Value(type),
      ageStatement: Value(ageStatement),
      filled: Value(filled),
      bottle: Value(bottle),
      caskNumber: Value(caskNumber),
      abv: Value(abv),
      size: Value(size),
      finish: Value(finish),
      videoUrl: Value(videoUrl),
      tastingNotes: Value(tastingNotes),
      history: Value(history),
    );
  }

  factory CollectionData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CollectionData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      image: serializer.fromJson<String>(json['image']),
      description: serializer.fromJson<String>(json['description']),
      age: serializer.fromJson<int>(json['age']),
      distillery: serializer.fromJson<String>(json['distillery']),
      region: serializer.fromJson<String>(json['region']),
      country: serializer.fromJson<String>(json['country']),
      type: serializer.fromJson<String>(json['type']),
      ageStatement: serializer.fromJson<String>(json['ageStatement']),
      filled: serializer.fromJson<int>(json['filled']),
      bottle: serializer.fromJson<int>(json['bottle']),
      caskNumber: serializer.fromJson<String>(json['caskNumber']),
      abv: serializer.fromJson<int>(json['abv']),
      size: serializer.fromJson<String>(json['size']),
      finish: serializer.fromJson<String>(json['finish']),
      videoUrl: serializer.fromJson<String>(json['videoUrl']),
      tastingNotes: serializer.fromJson<String>(json['tastingNotes']),
      history: serializer.fromJson<String>(json['history']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'image': serializer.toJson<String>(image),
      'description': serializer.toJson<String>(description),
      'age': serializer.toJson<int>(age),
      'distillery': serializer.toJson<String>(distillery),
      'region': serializer.toJson<String>(region),
      'country': serializer.toJson<String>(country),
      'type': serializer.toJson<String>(type),
      'ageStatement': serializer.toJson<String>(ageStatement),
      'filled': serializer.toJson<int>(filled),
      'bottle': serializer.toJson<int>(bottle),
      'caskNumber': serializer.toJson<String>(caskNumber),
      'abv': serializer.toJson<int>(abv),
      'size': serializer.toJson<String>(size),
      'finish': serializer.toJson<String>(finish),
      'videoUrl': serializer.toJson<String>(videoUrl),
      'tastingNotes': serializer.toJson<String>(tastingNotes),
      'history': serializer.toJson<String>(history),
    };
  }

  CollectionData copyWith({
    int? id,
    String? name,
    String? image,
    String? description,
    int? age,
    String? distillery,
    String? region,
    String? country,
    String? type,
    String? ageStatement,
    int? filled,
    int? bottle,
    String? caskNumber,
    int? abv,
    String? size,
    String? finish,
    String? videoUrl,
    String? tastingNotes,
    String? history,
  }) => CollectionData(
    id: id ?? this.id,
    name: name ?? this.name,
    image: image ?? this.image,
    description: description ?? this.description,
    age: age ?? this.age,
    distillery: distillery ?? this.distillery,
    region: region ?? this.region,
    country: country ?? this.country,
    type: type ?? this.type,
    ageStatement: ageStatement ?? this.ageStatement,
    filled: filled ?? this.filled,
    bottle: bottle ?? this.bottle,
    caskNumber: caskNumber ?? this.caskNumber,
    abv: abv ?? this.abv,
    size: size ?? this.size,
    finish: finish ?? this.finish,
    videoUrl: videoUrl ?? this.videoUrl,
    tastingNotes: tastingNotes ?? this.tastingNotes,
    history: history ?? this.history,
  );
  CollectionData copyWithCompanion(CollectionCompanion data) {
    return CollectionData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      image: data.image.present ? data.image.value : this.image,
      description: data.description.present
          ? data.description.value
          : this.description,
      age: data.age.present ? data.age.value : this.age,
      distillery: data.distillery.present
          ? data.distillery.value
          : this.distillery,
      region: data.region.present ? data.region.value : this.region,
      country: data.country.present ? data.country.value : this.country,
      type: data.type.present ? data.type.value : this.type,
      ageStatement: data.ageStatement.present
          ? data.ageStatement.value
          : this.ageStatement,
      filled: data.filled.present ? data.filled.value : this.filled,
      bottle: data.bottle.present ? data.bottle.value : this.bottle,
      caskNumber: data.caskNumber.present
          ? data.caskNumber.value
          : this.caskNumber,
      abv: data.abv.present ? data.abv.value : this.abv,
      size: data.size.present ? data.size.value : this.size,
      finish: data.finish.present ? data.finish.value : this.finish,
      videoUrl: data.videoUrl.present ? data.videoUrl.value : this.videoUrl,
      tastingNotes: data.tastingNotes.present
          ? data.tastingNotes.value
          : this.tastingNotes,
      history: data.history.present ? data.history.value : this.history,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CollectionData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('description: $description, ')
          ..write('age: $age, ')
          ..write('distillery: $distillery, ')
          ..write('region: $region, ')
          ..write('country: $country, ')
          ..write('type: $type, ')
          ..write('ageStatement: $ageStatement, ')
          ..write('filled: $filled, ')
          ..write('bottle: $bottle, ')
          ..write('caskNumber: $caskNumber, ')
          ..write('abv: $abv, ')
          ..write('size: $size, ')
          ..write('finish: $finish, ')
          ..write('videoUrl: $videoUrl, ')
          ..write('tastingNotes: $tastingNotes, ')
          ..write('history: $history')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    image,
    description,
    age,
    distillery,
    region,
    country,
    type,
    ageStatement,
    filled,
    bottle,
    caskNumber,
    abv,
    size,
    finish,
    videoUrl,
    tastingNotes,
    history,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CollectionData &&
          other.id == this.id &&
          other.name == this.name &&
          other.image == this.image &&
          other.description == this.description &&
          other.age == this.age &&
          other.distillery == this.distillery &&
          other.region == this.region &&
          other.country == this.country &&
          other.type == this.type &&
          other.ageStatement == this.ageStatement &&
          other.filled == this.filled &&
          other.bottle == this.bottle &&
          other.caskNumber == this.caskNumber &&
          other.abv == this.abv &&
          other.size == this.size &&
          other.finish == this.finish &&
          other.videoUrl == this.videoUrl &&
          other.tastingNotes == this.tastingNotes &&
          other.history == this.history);
}

class CollectionCompanion extends UpdateCompanion<CollectionData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> image;
  final Value<String> description;
  final Value<int> age;
  final Value<String> distillery;
  final Value<String> region;
  final Value<String> country;
  final Value<String> type;
  final Value<String> ageStatement;
  final Value<int> filled;
  final Value<int> bottle;
  final Value<String> caskNumber;
  final Value<int> abv;
  final Value<String> size;
  final Value<String> finish;
  final Value<String> videoUrl;
  final Value<String> tastingNotes;
  final Value<String> history;
  const CollectionCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.description = const Value.absent(),
    this.age = const Value.absent(),
    this.distillery = const Value.absent(),
    this.region = const Value.absent(),
    this.country = const Value.absent(),
    this.type = const Value.absent(),
    this.ageStatement = const Value.absent(),
    this.filled = const Value.absent(),
    this.bottle = const Value.absent(),
    this.caskNumber = const Value.absent(),
    this.abv = const Value.absent(),
    this.size = const Value.absent(),
    this.finish = const Value.absent(),
    this.videoUrl = const Value.absent(),
    this.tastingNotes = const Value.absent(),
    this.history = const Value.absent(),
  });
  CollectionCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String image,
    required String description,
    required int age,
    required String distillery,
    required String region,
    required String country,
    required String type,
    required String ageStatement,
    required int filled,
    required int bottle,
    required String caskNumber,
    required int abv,
    required String size,
    required String finish,
    required String videoUrl,
    required String tastingNotes,
    required String history,
  }) : name = Value(name),
       image = Value(image),
       description = Value(description),
       age = Value(age),
       distillery = Value(distillery),
       region = Value(region),
       country = Value(country),
       type = Value(type),
       ageStatement = Value(ageStatement),
       filled = Value(filled),
       bottle = Value(bottle),
       caskNumber = Value(caskNumber),
       abv = Value(abv),
       size = Value(size),
       finish = Value(finish),
       videoUrl = Value(videoUrl),
       tastingNotes = Value(tastingNotes),
       history = Value(history);
  static Insertable<CollectionData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? image,
    Expression<String>? description,
    Expression<int>? age,
    Expression<String>? distillery,
    Expression<String>? region,
    Expression<String>? country,
    Expression<String>? type,
    Expression<String>? ageStatement,
    Expression<int>? filled,
    Expression<int>? bottle,
    Expression<String>? caskNumber,
    Expression<int>? abv,
    Expression<String>? size,
    Expression<String>? finish,
    Expression<String>? videoUrl,
    Expression<String>? tastingNotes,
    Expression<String>? history,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (description != null) 'description': description,
      if (age != null) 'age': age,
      if (distillery != null) 'distillery': distillery,
      if (region != null) 'region': region,
      if (country != null) 'country': country,
      if (type != null) 'type': type,
      if (ageStatement != null) 'age_statement': ageStatement,
      if (filled != null) 'filled': filled,
      if (bottle != null) 'bottle': bottle,
      if (caskNumber != null) 'cask_number': caskNumber,
      if (abv != null) 'abv': abv,
      if (size != null) 'size': size,
      if (finish != null) 'finish': finish,
      if (videoUrl != null) 'video_url': videoUrl,
      if (tastingNotes != null) 'tasting_notes': tastingNotes,
      if (history != null) 'history': history,
    });
  }

  CollectionCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? image,
    Value<String>? description,
    Value<int>? age,
    Value<String>? distillery,
    Value<String>? region,
    Value<String>? country,
    Value<String>? type,
    Value<String>? ageStatement,
    Value<int>? filled,
    Value<int>? bottle,
    Value<String>? caskNumber,
    Value<int>? abv,
    Value<String>? size,
    Value<String>? finish,
    Value<String>? videoUrl,
    Value<String>? tastingNotes,
    Value<String>? history,
  }) {
    return CollectionCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      description: description ?? this.description,
      age: age ?? this.age,
      distillery: distillery ?? this.distillery,
      region: region ?? this.region,
      country: country ?? this.country,
      type: type ?? this.type,
      ageStatement: ageStatement ?? this.ageStatement,
      filled: filled ?? this.filled,
      bottle: bottle ?? this.bottle,
      caskNumber: caskNumber ?? this.caskNumber,
      abv: abv ?? this.abv,
      size: size ?? this.size,
      finish: finish ?? this.finish,
      videoUrl: videoUrl ?? this.videoUrl,
      tastingNotes: tastingNotes ?? this.tastingNotes,
      history: history ?? this.history,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (age.present) {
      map['age'] = Variable<int>(age.value);
    }
    if (distillery.present) {
      map['distillery'] = Variable<String>(distillery.value);
    }
    if (region.present) {
      map['region'] = Variable<String>(region.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (ageStatement.present) {
      map['age_statement'] = Variable<String>(ageStatement.value);
    }
    if (filled.present) {
      map['filled'] = Variable<int>(filled.value);
    }
    if (bottle.present) {
      map['bottle'] = Variable<int>(bottle.value);
    }
    if (caskNumber.present) {
      map['cask_number'] = Variable<String>(caskNumber.value);
    }
    if (abv.present) {
      map['abv'] = Variable<int>(abv.value);
    }
    if (size.present) {
      map['size'] = Variable<String>(size.value);
    }
    if (finish.present) {
      map['finish'] = Variable<String>(finish.value);
    }
    if (videoUrl.present) {
      map['video_url'] = Variable<String>(videoUrl.value);
    }
    if (tastingNotes.present) {
      map['tasting_notes'] = Variable<String>(tastingNotes.value);
    }
    if (history.present) {
      map['history'] = Variable<String>(history.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectionCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('description: $description, ')
          ..write('age: $age, ')
          ..write('distillery: $distillery, ')
          ..write('region: $region, ')
          ..write('country: $country, ')
          ..write('type: $type, ')
          ..write('ageStatement: $ageStatement, ')
          ..write('filled: $filled, ')
          ..write('bottle: $bottle, ')
          ..write('caskNumber: $caskNumber, ')
          ..write('abv: $abv, ')
          ..write('size: $size, ')
          ..write('finish: $finish, ')
          ..write('videoUrl: $videoUrl, ')
          ..write('tastingNotes: $tastingNotes, ')
          ..write('history: $history')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CollectionTable collection = $CollectionTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [collection];
}

typedef $$CollectionTableCreateCompanionBuilder =
    CollectionCompanion Function({
      Value<int> id,
      required String name,
      required String image,
      required String description,
      required int age,
      required String distillery,
      required String region,
      required String country,
      required String type,
      required String ageStatement,
      required int filled,
      required int bottle,
      required String caskNumber,
      required int abv,
      required String size,
      required String finish,
      required String videoUrl,
      required String tastingNotes,
      required String history,
    });
typedef $$CollectionTableUpdateCompanionBuilder =
    CollectionCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> image,
      Value<String> description,
      Value<int> age,
      Value<String> distillery,
      Value<String> region,
      Value<String> country,
      Value<String> type,
      Value<String> ageStatement,
      Value<int> filled,
      Value<int> bottle,
      Value<String> caskNumber,
      Value<int> abv,
      Value<String> size,
      Value<String> finish,
      Value<String> videoUrl,
      Value<String> tastingNotes,
      Value<String> history,
    });

class $$CollectionTableFilterComposer
    extends Composer<_$AppDatabase, $CollectionTable> {
  $$CollectionTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get distillery => $composableBuilder(
    column: $table.distillery,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get region => $composableBuilder(
    column: $table.region,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get country => $composableBuilder(
    column: $table.country,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ageStatement => $composableBuilder(
    column: $table.ageStatement,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get filled => $composableBuilder(
    column: $table.filled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bottle => $composableBuilder(
    column: $table.bottle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get caskNumber => $composableBuilder(
    column: $table.caskNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get abv => $composableBuilder(
    column: $table.abv,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get finish => $composableBuilder(
    column: $table.finish,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get videoUrl => $composableBuilder(
    column: $table.videoUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tastingNotes => $composableBuilder(
    column: $table.tastingNotes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get history => $composableBuilder(
    column: $table.history,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CollectionTableOrderingComposer
    extends Composer<_$AppDatabase, $CollectionTable> {
  $$CollectionTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get distillery => $composableBuilder(
    column: $table.distillery,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get region => $composableBuilder(
    column: $table.region,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get country => $composableBuilder(
    column: $table.country,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ageStatement => $composableBuilder(
    column: $table.ageStatement,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get filled => $composableBuilder(
    column: $table.filled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bottle => $composableBuilder(
    column: $table.bottle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get caskNumber => $composableBuilder(
    column: $table.caskNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get abv => $composableBuilder(
    column: $table.abv,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get finish => $composableBuilder(
    column: $table.finish,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get videoUrl => $composableBuilder(
    column: $table.videoUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tastingNotes => $composableBuilder(
    column: $table.tastingNotes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get history => $composableBuilder(
    column: $table.history,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CollectionTableAnnotationComposer
    extends Composer<_$AppDatabase, $CollectionTable> {
  $$CollectionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<int> get age =>
      $composableBuilder(column: $table.age, builder: (column) => column);

  GeneratedColumn<String> get distillery => $composableBuilder(
    column: $table.distillery,
    builder: (column) => column,
  );

  GeneratedColumn<String> get region =>
      $composableBuilder(column: $table.region, builder: (column) => column);

  GeneratedColumn<String> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get ageStatement => $composableBuilder(
    column: $table.ageStatement,
    builder: (column) => column,
  );

  GeneratedColumn<int> get filled =>
      $composableBuilder(column: $table.filled, builder: (column) => column);

  GeneratedColumn<int> get bottle =>
      $composableBuilder(column: $table.bottle, builder: (column) => column);

  GeneratedColumn<String> get caskNumber => $composableBuilder(
    column: $table.caskNumber,
    builder: (column) => column,
  );

  GeneratedColumn<int> get abv =>
      $composableBuilder(column: $table.abv, builder: (column) => column);

  GeneratedColumn<String> get size =>
      $composableBuilder(column: $table.size, builder: (column) => column);

  GeneratedColumn<String> get finish =>
      $composableBuilder(column: $table.finish, builder: (column) => column);

  GeneratedColumn<String> get videoUrl =>
      $composableBuilder(column: $table.videoUrl, builder: (column) => column);

  GeneratedColumn<String> get tastingNotes => $composableBuilder(
    column: $table.tastingNotes,
    builder: (column) => column,
  );

  GeneratedColumn<String> get history =>
      $composableBuilder(column: $table.history, builder: (column) => column);
}

class $$CollectionTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CollectionTable,
          CollectionData,
          $$CollectionTableFilterComposer,
          $$CollectionTableOrderingComposer,
          $$CollectionTableAnnotationComposer,
          $$CollectionTableCreateCompanionBuilder,
          $$CollectionTableUpdateCompanionBuilder,
          (
            CollectionData,
            BaseReferences<_$AppDatabase, $CollectionTable, CollectionData>,
          ),
          CollectionData,
          PrefetchHooks Function()
        > {
  $$CollectionTableTableManager(_$AppDatabase db, $CollectionTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CollectionTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CollectionTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CollectionTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> image = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<int> age = const Value.absent(),
                Value<String> distillery = const Value.absent(),
                Value<String> region = const Value.absent(),
                Value<String> country = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> ageStatement = const Value.absent(),
                Value<int> filled = const Value.absent(),
                Value<int> bottle = const Value.absent(),
                Value<String> caskNumber = const Value.absent(),
                Value<int> abv = const Value.absent(),
                Value<String> size = const Value.absent(),
                Value<String> finish = const Value.absent(),
                Value<String> videoUrl = const Value.absent(),
                Value<String> tastingNotes = const Value.absent(),
                Value<String> history = const Value.absent(),
              }) => CollectionCompanion(
                id: id,
                name: name,
                image: image,
                description: description,
                age: age,
                distillery: distillery,
                region: region,
                country: country,
                type: type,
                ageStatement: ageStatement,
                filled: filled,
                bottle: bottle,
                caskNumber: caskNumber,
                abv: abv,
                size: size,
                finish: finish,
                videoUrl: videoUrl,
                tastingNotes: tastingNotes,
                history: history,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String image,
                required String description,
                required int age,
                required String distillery,
                required String region,
                required String country,
                required String type,
                required String ageStatement,
                required int filled,
                required int bottle,
                required String caskNumber,
                required int abv,
                required String size,
                required String finish,
                required String videoUrl,
                required String tastingNotes,
                required String history,
              }) => CollectionCompanion.insert(
                id: id,
                name: name,
                image: image,
                description: description,
                age: age,
                distillery: distillery,
                region: region,
                country: country,
                type: type,
                ageStatement: ageStatement,
                filled: filled,
                bottle: bottle,
                caskNumber: caskNumber,
                abv: abv,
                size: size,
                finish: finish,
                videoUrl: videoUrl,
                tastingNotes: tastingNotes,
                history: history,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CollectionTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CollectionTable,
      CollectionData,
      $$CollectionTableFilterComposer,
      $$CollectionTableOrderingComposer,
      $$CollectionTableAnnotationComposer,
      $$CollectionTableCreateCompanionBuilder,
      $$CollectionTableUpdateCompanionBuilder,
      (
        CollectionData,
        BaseReferences<_$AppDatabase, $CollectionTable, CollectionData>,
      ),
      CollectionData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CollectionTableTableManager get collection =>
      $$CollectionTableTableManager(_db, _db.collection);
}
