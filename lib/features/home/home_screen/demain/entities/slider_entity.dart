import 'package:equatable/equatable.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/product_entity.dart';

class SliderEntity extends Equatable {
  final int? id;
  final int? parentId;
  final int? productId;
  final String? name;
  final String? link;
  final String? title;
  final String? content;
  final String? video;
  final String? image;
  final String? icon;
  final String? type;
  final String? pageType;
  final int? orderId;
  final int? active;
  final String? createdAt;
  final String? updatedAt;
  final ProductEntity? product;

  const SliderEntity({
    this.id,
    this.parentId,
    this.productId,
    this.name,
    this.link,
    this.title,
    this.content,
    this.video,
    this.image,
    this.icon,
    this.type,
    this.pageType,
    this.orderId,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.product,
  });

  @override
  List<Object?> get props => [
        id,
        parentId,
        productId,
        name,
        link,
        title,
        content,
        video,
        image,
        icon,
        type,
        pageType,
        orderId,
        active,
        createdAt,
        updatedAt,
        product,
      ];
}
