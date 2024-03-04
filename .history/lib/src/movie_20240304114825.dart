import 'review.dart';

import 'actor.dart';
import 'genre.dart';

class Movie {
  final String name;
  final int budget;
  final List<Actor> actors;
  final double criticsRating;
  final double audienceRating;
  final int year;
  final String country;
  final Genre genre;
  final List<Review> reviews;

  Movie({
    required this.name,
    required this.text,
    required this.rating,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      name: json['name'],
      text: json['text'],
      rating: json['rating'],
    );
  }
  Map<String, dynamic> toJson() => {
        'name': name,
        'text': text,
        'rating': rating,
      };
}
