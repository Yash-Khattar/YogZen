import 'dart:convert';

class Yoga {
  String name;
  String description;
  String image;
  List<String> steps;
  String url;
  Yoga({
    required this.name,
    required this.description,
    required this.image,
    required this.steps,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'image': image,
      'steps': steps,
      'url': url,
    };
  }

  factory Yoga.fromMap(Map<String, dynamic> map) {
    return Yoga(
      name: map['name'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      steps: List<String>.from(map['steps'] as List<String>),
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Yoga.fromJson(String source) =>
      Yoga.fromMap(json.decode(source) as Map<String, dynamic>);
}
