import 'package:bookly/features/home/data/models/book_model/volumeInfo_model.dart';
import 'package:equatable/equatable.dart';

class BookModel extends Equatable {
  final String id;
  final VolumeInfoModel volumeInfo;

  const BookModel({required this.id, required this.volumeInfo});

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        id: json['id'],
        volumeInfo: VolumeInfoModel.fromJson(json['volumeInfo']),
      );

  @override
  List<Object?> get props => [id, volumeInfo];
}
