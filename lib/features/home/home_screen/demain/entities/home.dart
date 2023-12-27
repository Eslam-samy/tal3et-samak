import 'package:equatable/equatable.dart';
import 'package:talet_samak/core/models/user_entity.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/category_entity.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/meta_entity.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/product_entity.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/slider_entity.dart';

class HomeEntity extends Equatable {
  final String? status;
  final String? message;
  final HomeApiData? data;

  const HomeEntity({
    this.status,
    this.message,
    this.data,
  });

  @override
  List<Object?> get props => [status, message, data];
}

class HomeApiData extends Equatable {
  final List<ProductEntity>? data;
  final MetaEntity? meta;
  final List<SliderEntity>? sliders;
  final List<CategoryEntity>? categories;
  final List<ProductEntity>? offers;
  final UserEntity? user;
  final int? notificationCount;
  final String? minOrder;
  final String? maxOrder;
  final String? deliveryCost;
  final String? freeShipping;
  final String? cartTotal;
  final String? cartAmount;
  final int? cartCount;
  final String? productMin;
  final String? productMax;
  final String? siteEmail;
  final String? sitePhone;
  final String? address;
  final String? apple;
  final String? android;
  final String? huawei;
  final String? facebook;
  final String? tiktok;
  final String? twitter;
  final String? youtube;
  final String? instagram;
  final String? whatsapp;
  final String? snapchat;

  const HomeApiData({
    this.user,
    this.notificationCount,
    this.minOrder,
    this.maxOrder,
    this.deliveryCost,
    this.freeShipping,
    this.cartTotal,
    this.cartAmount,
    this.cartCount,
    this.productMin,
    this.productMax,
    this.siteEmail,
    this.sitePhone,
    this.address,
    this.apple,
    this.android,
    this.huawei,
    this.facebook,
    this.tiktok,
    this.twitter,
    this.youtube,
    this.instagram,
    this.whatsapp,
    this.snapchat,
    this.data,
    this.meta,
    this.sliders,
    this.categories,
    this.offers,
  });

  @override
  List<Object?> get props => [
        user,
        notificationCount,
        minOrder,
        maxOrder,
        deliveryCost,
        freeShipping,
        cartTotal,
        cartAmount,
        cartCount,
        productMin,
        productMax,
        siteEmail,
        sitePhone,
        address,
        apple,
        android,
        huawei,
        facebook,
        tiktok,
        twitter,
        youtube,
        instagram,
        whatsapp,
        snapchat,
        data,
        meta,
        sliders,
        categories,
        offers,
      ];
}
