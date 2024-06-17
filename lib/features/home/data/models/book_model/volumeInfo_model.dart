import 'package:equatable/equatable.dart';

import 'image_links_models.dart';

class VolumeInfoModel extends Equatable {
  final String title;
  final List<String> authors;
  final List<String> categories;
  final double averageRating;
  final int ratingsCount;
  final ImageLinksModels? imageLinksModels;
  final String previewLink;

  const VolumeInfoModel({
    required this.title,
    required this.authors,
    required this.categories,
    required this.averageRating,
    required this.ratingsCount,
    required this.imageLinksModels,
    required this.previewLink,
  });

  factory VolumeInfoModel.fromJson(Map<String, dynamic> json) =>
      VolumeInfoModel(
        title: json['title'],
        authors: List<String>.from((json['authors'] as List).map((e) => e)),
        categories:
            List<String>.from((json['categories'] as List).map((e) => e)),
        averageRating: json['averageRating'],
        ratingsCount: json['ratingsCount'],
        imageLinksModels: json['imageLinksModels'] != null
            ? ImageLinksModels.fromJson(json['imageLinksModels'])
            : null,
        previewLink: json['previewLink'],
      );

  @override
  List<Object?> get props => [
        title,
        authors,
        categories,
        averageRating,
        ratingsCount,
        imageLinksModels,
        previewLink,
      ];
}