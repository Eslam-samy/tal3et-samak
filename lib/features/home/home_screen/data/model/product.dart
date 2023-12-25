import 'package:talet_samak/features/home/home_screen/data/model/unit.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/product_entity.dart';

class Product extends ProductEntity {
  Product({
    super.id,
    super.code,
    super.link,
    super.name,
    super.content,
    super.favorite,
    super.inCart,
    super.idInCart,
    super.countInCart,
    super.video,
    super.image,
    super.rate,
    super.rateCount,
    super.rateAll,
    super.prepareTime,
    super.price,
    super.start,
    super.skip,
    super.orderLimit,
    super.offer,
    super.offerType,
    super.offerPrice,
    super.offerPercent,
    super.offerAmount,
    super.offerAmountAdd,
    super.maxAmount,
    super.maxAddition,
    super.active,
    super.feature,
    super.filter,
    super.shipping,
    super.sale,
    super.isLate,
    super.isSize,
    super.isMax,
    super.orderMax,
    super.dateStart,
    super.dateExpire,
    super.dayStart,
    super.dayEnd,
    super.type,
    super.status,
    super.orderId,
    super.parentId,
    super.unitId,
    super.brandId,
    super.sizeId,
    super.createdAt,
    super.updatedAt,
    super.unit,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      code: json["code"],
      link: json["link"],
      name: json["name"],
      content: json["content"],
      favorite: json["favorite"],
      inCart: json["in_cart"],
      idInCart: json["id_in_cart"],
      countInCart: json["count_in_cart"],
      video: json["video"],
      image: json["image"],
      rate: json["rate"],
      rateCount: json["rate_count"],
      rateAll: json["rate_all"],
      prepareTime: json["prepare_time"],
      price: json["price"],
      start: json["start"],
      skip: json["skip"],
      orderLimit: json["order_limit"],
      offer: json["offer"],
      offerType: json["offer_type"],
      offerPrice: json["offer_price"],
      offerPercent: json["offer_percent"],
      offerAmount: json["offer_amount"],
      offerAmountAdd: json["offer_amount_add"],
      maxAmount: json["max_amount"],
      maxAddition: json["max_addition"],
      active: json["active"],
      feature: json["feature"],
      filter: json["filter"],
      shipping: json["shipping"],
      sale: json["sale"],
      isLate: json["is_late"],
      isSize: json["is_size"],
      isMax: json["is_max"],
      orderMax: json["order_max"],
      dateStart: json["date_start"],
      dateExpire: json["date_expire"],
      dayStart: json["day_start"],
      dayEnd: json["day_end"],
      type: json["type"],
      status: json["status"],
      orderId: json["order_id"],
      parentId: json["parent_id"],
      unitId: json["unit_id"],
      brandId: json["brand_id"],
      sizeId: json["size_id"],
      createdAt: json["created_at"],
      updatedAt: json["updated_at"],
      unit: json["unit"] == null ? null : Unit.fromJson(json["unit"]),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["code"] = code;
    _data["link"] = link;
    _data["name"] = name;
    _data["content"] = content;
    _data["favorite"] = favorite;
    _data["in_cart"] = inCart;
    _data["id_in_cart"] = idInCart;
    _data["count_in_cart"] = countInCart;
    _data["video"] = video;
    _data["image"] = image;
    _data["rate"] = rate;
    _data["rate_count"] = rateCount;
    _data["rate_all"] = rateAll;
    _data["prepare_time"] = prepareTime;
    _data["price"] = price;
    _data["start"] = start;
    _data["skip"] = skip;
    _data["order_limit"] = orderLimit;
    _data["offer"] = offer;
    _data["offer_type"] = offerType;
    _data["offer_price"] = offerPrice;
    _data["offer_percent"] = offerPercent;
    _data["offer_amount"] = offerAmount;
    _data["offer_amount_add"] = offerAmountAdd;
    _data["max_amount"] = maxAmount;
    _data["max_addition"] = maxAddition;
    _data["active"] = active;
    _data["feature"] = feature;
    _data["filter"] = filter;
    _data["shipping"] = shipping;
    _data["sale"] = sale;
    _data["is_late"] = isLate;
    _data["is_size"] = isSize;
    _data["is_max"] = isMax;
    _data["order_max"] = orderMax;
    _data["date_start"] = dateStart;
    _data["date_expire"] = dateExpire;
    _data["day_start"] = dayStart;
    _data["day_end"] = dayEnd;
    _data["type"] = type;
    _data["status"] = status;
    _data["order_id"] = orderId;
    _data["parent_id"] = parentId;
    _data["unit_id"] = unitId;
    _data["brand_id"] = brandId;
    _data["size_id"] = sizeId;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}
