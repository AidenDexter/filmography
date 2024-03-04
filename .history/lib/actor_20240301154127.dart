class Actor {
  final String name;
  final int age;
  final int filmsAmount;
  final String aboutActor;

  Actor({
    required this.name,
    required this.age,
    required this.filmsAmount,
    required this.aboutActor,
  });

  factory Actor.fromJson(Map<String, dynamic> json) {
    return Actor(
        name: json['name'], age: json['age'], filmsAmount: json['filmsAmount'], aboutActor: json['aboutActor']);
  }

  Map<String, dynamic> toJson() => {'name': name, 'age': age, 'filmsAmount': filmsAmount, 'aboutActor': aboutActor};
}
