import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final int? id;
  final dynamic parentId;
  final String? link;
  final String? name;
  final String? content;
  final dynamic image;
  final dynamic type;
  final dynamic status;
  final int? orderId;
  final int? active;
  final String? createdAt;
  final String? updatedAt;

  const CategoryEntity({
    this.id,
    this.parentId,
    this.link,
    this.name,
    this.content,
    this.image,
    this.type,
    this.status,
    this.orderId,
    this.active,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [id, parentId, link, name, content];
}
