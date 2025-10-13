import 'package:flutter/material.dart';

class PromoModel {
  const PromoModel({
    required this.imageUrl,
    required this.copy,
    required this.color,
  });

  final String imageUrl;
  final String copy;
  final Color color;
}
