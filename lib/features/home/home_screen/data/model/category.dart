import 'package:talet_samak/features/home/home_screen/demain/entities/category_entity.dart';

class Category extends CategoryEntity {
  const Category({
    super.id,
    super.parentId,
    super.link,
    super.name,
    super.content,
    super.image,
    super.type,
    super.status,
    super.orderId,
    super.active,
    super.createdAt,
    super.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json["id"],
      parentId: json["parent_id"],
      link: json["link"],
      name: json["name"],
      content: json["content"],
      image: json["image"],
      type: json["type"],
      status: json["status"],
      orderId: json["order_id"],
      active: json["active"],
      createdAt: json["created_at"],
      updatedAt: json["updated_at"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["parent_id"] = parentId;
    _data["link"] = link;
    _data["name"] = name;
    _data["content"] = content;
    _data["image"] = image;
    _data["type"] = type;
    _data["status"] = status;
    _data["order_id"] = orderId;
    _data["active"] = active;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}
