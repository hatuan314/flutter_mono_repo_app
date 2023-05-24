import 'package:app/domain/entities/image_entity.dart';
import 'package:equatable/equatable.dart';

class ImagesState extends Equatable {
  bool? loading;
  List<ImageEntity>? images;

  ImagesState({this.loading, this.images});

  ImagesState copyWith({bool? loading, List<ImageEntity>? images}) =>
      ImagesState(loading: loading ?? this.loading, images: images ?? this.images);

  @override
  // TODO: implement props
  List<Object?> get props => [loading, images];

}