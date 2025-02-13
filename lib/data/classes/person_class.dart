class Person {
  final int count;
  final String name;
  final String gender;
  final double probability;

  const Person({
    required this.count,
    required this.name,
    required this.gender,
    required this.probability,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'count': int count,
        'name': String name,
        'gender': String gender,
        'probability': num probability
      } =>
        Person(
          count: count,
          name: name,
          gender: gender,
          probability: probability.toDouble(),
        ),
      _ => throw const FormatException('Failed to load person.'),
    };
  }

  Map<String, dynamic> toJson() => {
        'count': count,
        'name': name,
        'gender': gender,
        'probability': probability,
      };

  @override
  String toString() {
    return 'Person{count: $count, name: $name, gender: $gender, probability: $probability}';
  }
}
