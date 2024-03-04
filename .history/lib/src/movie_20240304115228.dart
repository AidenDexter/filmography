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
    required this.budget,
    required this.actors,
    required this.criticsRating,
    required this.audienceRating,
    required this.year,
    required this.country,
    required this.genre,
    required this.reviews,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      name: json['name'],
      budget: json['budget'],
      actors: json['actors'],
      criticsRating: json['criticsRating'],
      audienceRating: json['audienceRating'],
      year: json['year'],
      country: json['country'],
      genre: json['genre'],
      reviews: json['reviews'],
    );
  }
  Map<String, dynamic> toJson() => {
        'name': name,
        'text': text,
        'rating': rating,
      };
}
