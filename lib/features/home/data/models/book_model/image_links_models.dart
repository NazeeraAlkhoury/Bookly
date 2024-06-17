import 'package:equatable/equatable.dart';

class ImageLinksModels extends Equatable {
  final String smallThumbnail;
  final String thumbnail;

  const ImageLinksModels(
      {required this.smallThumbnail, required this.thumbnail});

  factory ImageLinksModels.fromJson(Map<String, dynamic> json) =>
      ImageLinksModels(
        smallThumbnail: json['smallThumbnail'],
        thumbnail: json['thumbnail'],
      );

  @override
  List<Object?> get props => [smallThumbnail, thumbnail];
}
