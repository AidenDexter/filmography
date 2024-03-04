class Review {
  final String name;
  final String text;
  final double rating;

  Review({
    required this.name,
    required this.text,
    required this.rating,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      name: json['name'],
      text: json['text'],
      rating: json['rating'].todouble(),
    );
  }
  Map<String, dynamic> toJson() => {
        'name': name,
        'text': text,
        'rating': rating,
      };
  @override
  String toString() {
    return 'Review{name: $name, text: $text, rating: $rating}';
  }
}
