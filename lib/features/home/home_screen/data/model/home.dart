import 'package:talet_samak/core/models/user.dart';
import 'package:talet_samak/features/home/home_screen/data/model/category.dart';
import 'package:talet_samak/features/home/home_screen/data/model/meta.dart';
import 'package:talet_samak/features/home/home_screen/data/model/product.dart';
import 'package:talet_samak/features/home/home_screen/data/model/slider.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/home.dart';

class Home extends HomeEntity {
  const Home({
    required super.status,
    required super.message,
    required super.data,
  });

  factory Home.fromJson(Map<String, dynamic> json) {
    return Home(
      status: json["status"],
      message: json["message"],
      data: Data.fromJson(json["data"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {'status': status, 'message': message, 'data': data};
  }
}

class Data extends HomeApiData {
  Data(
      {super.data,
      super.meta,
      super.user,
      super.notificationCount,
      super.minOrder,
      super.maxOrder,
      super.deliveryCost,
      super.freeShipping,
      super.cartTotal,
      super.cartAmount,
      super.cartCount,
      super.productMin,
      super.productMax,
      super.siteEmail,
      super.sitePhone,
      super.address,
      super.apple,
      super.android,
      super.huawei,
      super.facebook,
      super.tiktok,
      super.twitter,
      super.youtube,
      super.instagram,
      super.whatsapp,
      super.snapchat,
      super.sliders,
      super.categories,
      super.offers});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      data: json["data"] == null
          ? null
          : (json["data"] as List).map((e) => Product.fromJson(e)).toList(),
      meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      user: json["user"] == null ? null : User.fromJson(json['user']),
      notificationCount: json["notification_count"],
      minOrder: json["min_order"],
      maxOrder: json["max_order"],
      deliveryCost: json["delivery_cost"],
      freeShipping: json["free_shipping"],
      cartTotal: json["cart_total"],
      cartAmount: json["cart_amount"],
      cartCount: json["cart_count"],
      productMin: json["product_min"],
      productMax: json["product_max"],
      siteEmail: json["site_email"],
      sitePhone: json["site_phone"],
      address: json["address"],
      apple: json["apple"],
      android: json["android"],
      huawei: json["huawei"],
      facebook: json["facebook"],
      tiktok: json["tiktok"],
      twitter: json["twitter"],
      youtube: json["youtube"],
      instagram: json["instagram"],
      whatsapp: json["whatsapp"],
      snapchat: json["snapchat"],
      sliders: json["sliders"] == null
          ? null
          : (json["sliders"] as List).map((e) => Sliders.fromJson(e)).toList(),
      categories: json["categories"] == null
          ? null
          : (json["categories"] as List)
              .map((e) => Category.fromJson(e))
              .toList(),
      offers: json["offers"] == null
          ? null
          : (json["offers"] as List).map((e) => Product.fromJson(e)).toList(),
    );
  }
}
