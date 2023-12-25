import 'package:talet_samak/features/home/home_screen/data/model/product.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/slider_entity.dart';

class Sliders extends SliderEntity {
  const Sliders(
      {super.id,
      super.parentId,
      super.productId,
      super.name,
      super.link,
      super.title,
      super.content,
      super.video,
      super.image,
      super.icon,
      super.type,
      super.pageType,
      super.orderId,
      super.active,
      super.createdAt,
      super.updatedAt,
      super.product});

  factory Sliders.fromJson(Map<String, dynamic> json) {
    return Sliders(
      id: json["id"],
      parentId: json["parent_id"],
      productId: json["product_id"],
      name: json["name"],
      link: json["link"],
      title: json["title"],
      content: json["content"],
      video: json["video"],
      image: json["image"],
      icon: json["icon"],
      type: json["type"],
      pageType: json["page_type"],
      orderId: json["order_id"],
      active: json["active"],
      createdAt: json["created_at"],
      updatedAt: json["updated_at"],
      product:
          json["product"] != null ? Product.fromJson(json["product"]) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["parent_id"] = parentId;
    _data["product_id"] = productId;
    _data["name"] = name;
    _data["link"] = link;
    _data["title"] = title;
    _data["content"] = content;
    _data["video"] = video;
    _data["image"] = image;
    _data["icon"] = icon;
    _data["type"] = type;
    _data["page_type"] = pageType;
    _data["order_id"] = orderId;
    _data["active"] = active;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["product"] = product;
    return _data;
  }
}
