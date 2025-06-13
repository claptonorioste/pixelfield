import 'dart:convert';

class Bottle {
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
  final List<TastingNote> tastingNotes;
  final List<History> history;

  Bottle({
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

  factory Bottle.fromJson(Map<String, dynamic> json) {
    if (json['tastingNotes'].runtimeType == String) {
      json['tastingNotes'] = jsonDecode(json['tastingNotes'] ?? '[]');
    }
    if (json['history'].runtimeType == String) {
      json['history'] = jsonDecode(json['history'] ?? '[]');
    }

    return Bottle(
      id: json['id'] ?? 0,
      name: (json['name'] ?? '').toString(),
      image: (json['image'] ?? '').toString(),
      description: (json['description'] ?? '').toString(),
      age: json['age'] ?? 0,
      distillery: (json['distillery'] ?? '').toString(),
      region: (json['region'] ?? '').toString(),
      country: (json['country'] ?? '').toString(),
      type: (json['type'] ?? '').toString(),
      ageStatement: (json['age_statement'] ?? '').toString(),
      filled: json['filled'] ?? 0,
      bottle: json['bottle'] ?? 0,
      caskNumber: (json['cask_number'] ?? '').toString(),
      abv: json['abv'] ?? 0,
      size: (json['size'] ?? '').toString(),
      finish: (json['finish'] ?? '').toString(),
      videoUrl: (json['video_url'] ?? '').toString(),
      tastingNotes: [
        for (var note in json['tastingNotes'])
          TastingNote(
            id: note['id'],
            author: note['author'],
            notes: {
              'nose': note['notes']['nose'],
              'palate': note['notes']['palate'],
              'finish': note['notes']['finish'],
            },
          ),
      ],
      history: [
        for (var history in json['history'])
          History(
            label: history['label'],
            title: history['title'],
            description: history['description'],
            attachments: [
              for (var attachment in history['attachments']) attachment,
            ],
          ),
      ],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'age': age,
      'distillery': distillery,
      'region': region,
      'country': country,
      'type': type,
      'age_statement': ageStatement,
      'filled': filled,
      'bottle': bottle,
      'cask_number': caskNumber,
      'ABV': abv,
      'size': size,
      'finish': finish,
      'video_url': videoUrl,
      'tasting_notes': tastingNotes.map((e) => e.toJson()).toList(),
      'history': history.map((e) => e.toJson()).toList(),
    };
  }
}

class TastingNote {
  final String id;
  final String author;
  final Map<String, String> notes;

  TastingNote({required this.id, required this.author, required this.notes});

  factory TastingNote.fromJson(Map<String, dynamic> json) {
    return TastingNote(
      id: json['id'],
      author: json['author'],
      notes: json['notes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'author': author, 'notes': notes};
  }
}

class History {
  final String label;
  final String title;
  final String description;
  final List<String> attachments;

  History({
    required this.label,
    required this.title,
    required this.description,
    required this.attachments,
  });

  factory History.fromJson(Map<String, dynamic> json) {
    return History(
      label: json['label'],
      title: json['title'],
      description: json['description'],
      attachments: json['attachments'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'title': title,
      'description': description,
      'attachments': attachments,
    };
  }
}
