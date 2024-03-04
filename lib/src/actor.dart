import 'package:json_annotation/json_annotation.dart';

part 'actor.g.dart';

@JsonSerializable()
class Actor {
  final String name;
  final int age;
  @JsonKey(name: 'filmsAmount')
  final int numberOfFilms;
  final String aboutActor;

  Actor({
    required this.name,
    required this.age,
    required this.numberOfFilms,
    required this.aboutActor,
  });

  factory Actor.fromJson(Map<String, dynamic> json) => _$ActorFromJson(json);

  Map<String, dynamic> toJson() => _$ActorToJson(this);
  // Map<String, dynamic> toJson() => {
  //       'name': name,
  //       'age': age,
  //       'filmsAmount': filmsAmount,
  //       'aboutActor': aboutActor,
  //     };
  @override
  String toString() {
    StringBuffer sb = StringBuffer();
    sb.write('Actor{name: $name, age: $age, ');
    sb.write('filmsAmount: $numberOfFilms, ');
    sb.write('aboutActor: $aboutActor}');
    return sb.toString();
  }
}
