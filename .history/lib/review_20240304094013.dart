class Review {
  final String name;
  final String text;
  final double rating;

  Review({required this.name, required this.text, required this.rating});


  factoty Review.fromJson(Map<String, dynamic >json)
}
