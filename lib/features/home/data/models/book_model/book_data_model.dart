import 'package:bookly/features/home/data/models/book_model/voluminfo_model.dart';
import 'package:equatable/equatable.dart';

class BookDataModel extends Equatable {
  final String id;
  final VolumeInfoModel volumeInfo;

  const BookDataModel({required this.id, required this.volumeInfo});

  factory BookDataModel.fromJson(Map<String, dynamic> json) => BookDataModel(
        id: json['id'],
        volumeInfo: VolumeInfoModel.fromJson(json['volumeInfo']),
      );

  @override
  List<Object?> get props => [id, volumeInfo];
}
