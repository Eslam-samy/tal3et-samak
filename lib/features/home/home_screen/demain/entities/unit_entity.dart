import 'package:equatable/equatable.dart';

class UnitEntity extends Equatable {
  final int? id;
  final String? image;
  final String? name;
  final int? orderId;
  final int? active;
  final String? createdAt;
  final String? updatedAt;

  const UnitEntity({
    this.id,
    this.image,
    this.name,
    this.orderId,
    this.active,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props =>
      [id, image, name, orderId, active, createdAt, updatedAt];
}
