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
      throw FormatException(
        'Required "text" field of type String? in $json',
      );
    }
    final rating = json['rating'];
    if (rating is! double) {
      throw FormatException(
        'Required "rating" field of type double in $json',
      );
    }
    return Review(
      name: name,
      text: text ?? '',
      rating: rating.toDouble(),
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
