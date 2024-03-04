class Review {
  final String name;
  final String? text;
  final double rating;

  Review({
    required this.name,
    required this.text,
    required this.rating,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name is! String) {
      throw FormatException(
        'Required "name" field of type String in $json',
      );
    }
    final text = json['text'];
    if (text is! String?) {
      throw FormatExeption(
        'Required "text" field of type String? in $json',
      );
    }
    return Review(
      name: json['name'],
      text: json['text'] ?? '',
      rating: json['rating'].toDouble(),
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
