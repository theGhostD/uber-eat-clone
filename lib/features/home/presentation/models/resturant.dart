class ResturantCardModel {
  const ResturantCardModel({
    required this.imageUrl,
    required this.isFavorite,
    required this.rating,
    required this.title,
     this.duration,
    this.isPromo = false,
  });

  final String imageUrl;
  final bool isFavorite;
  final bool? isPromo;
  final String title;
  final String? duration;

  final String rating;
}
