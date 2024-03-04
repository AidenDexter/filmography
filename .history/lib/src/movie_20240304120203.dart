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
        'budget': budget,
        'actors': actors,
        'criticsRating': criticsRating,
        'audienceRating': audienceRating,
        'year': year,
        'country': country,
        'genre': genre,
        'reviews': reviews,
      };
  @override
  String toString() {
    StringBuffer sb = StringBuffer();
    sb.write('Movie{name: $name, budget: $budget, ');
    sb.write('actors: $actors, criticsRating: $criticsRating, ');
    sb.write('audienceRating: $audienceRating, year: $year, ');
    sb.write('country: $country, genre: $genre,  reviews: $reviews, ');
    return sb.toString();
  }
}
