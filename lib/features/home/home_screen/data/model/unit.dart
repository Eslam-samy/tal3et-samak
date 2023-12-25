import 'package:talet_samak/features/home/home_screen/demain/entities/unit_entity.dart';

class Unit extends UnitEntity {
  const Unit({
    int? id,
    String? image,
    String? name,
    int? orderId,
    int? active,
    String? createdAt,
    String? updatedAt,
  }) : super(
          id: id,
          image: image,
          name: name,
          orderId: orderId,
          active: active,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory Unit.fromJson(Map<String, dynamic> json) {
    return Unit(
      id: json["id"],
      image: json["image"],
      name: json["name"],
      orderId: json["order_id"],
      active: json["active"],
      createdAt: json["created_at"],
      updatedAt: json["updated_at"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["image"] = image;
    _data["name"] = name;
    _data["order_id"] = orderId;
    _data["active"] = active;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}
