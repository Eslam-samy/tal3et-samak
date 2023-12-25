import 'package:equatable/equatable.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/unit_entity.dart';

class ProductEntity extends Equatable {
  final int? id;
  final String? code;
  final String? link;
  final String? name;
  final String? content;
  final String? favorite;
  final String? inCart;
  final int? idInCart;
  final String? countInCart;
  final String? video;
  final String? image;
  final String? rate;
  final int? rateCount;
  final String? rateAll;
  final String? prepareTime;
  final String? price;
  final String? start;
  final String? skip;
  final String? orderLimit;
  final int? offer;
  final String? offerType;
  final String? offerPrice;
  final String? offerPercent;
  final String? offerAmount;
  final String? offerAmountAdd;
  final String? maxAmount;
  final int? maxAdditionFree;
  final int? maxAddition;
  final int? active;
  final int? feature;
  final int? filter;
  final int? shipping;
  final int? sale;
  final int? isLate;
  final int? isSize;
  final int? isMax;
  final String? orderMax;
  final String? dateStart;
  final String? dateExpire;
  final String? dayStart;
  final String? dayEnd;
  final String? type;
  final String? status;
  final int? orderId;
  final int? parentId;
  final int? unitId;
  final int? brandId;
  final int? sizeId;
  final String? createdAt;
  final String? updatedAt;
  final UnitEntity? unit;
  // final ChildrensData childrens;

  const ProductEntity({
    this.id,
    this.code,
    this.link,
    this.name,
    this.content,
    this.favorite,
    this.inCart,
    this.idInCart,
    this.countInCart,
    this.video,
    this.image,
    this.rate,
    this.rateCount,
    this.rateAll,
    this.prepareTime,
    this.price,
    this.start,
    this.skip,
    this.orderLimit,
    this.offer,
    this.offerType,
    this.offerPrice,
    this.offerPercent,
    this.offerAmount,
    this.offerAmountAdd,
    this.maxAmount,
    this.maxAdditionFree,
    this.maxAddition,
    this.active,
    this.feature,
    this.filter,
    this.shipping,
    this.sale,
    this.isLate,
    this.isSize,
    this.isMax,
    this.orderMax,
    this.dateStart,
    this.dateExpire,
    this.dayStart,
    this.dayEnd,
    this.type,
    this.status,
    this.orderId,
    this.parentId,
    this.unitId,
    this.brandId,
    this.sizeId,
    this.createdAt,
    this.updatedAt,
    this.unit,
    // required this.childrens,
  });

  @override
  List<Object?> get props => [
        id,
        code,
        link,
        name,
        content,
        favorite,
        inCart,
        idInCart,
        countInCart,
        video,
        image,
        rate,
        rateCount,
        rateAll,
        prepareTime,
        price,
        start,
        skip,
        orderLimit,
        offer,
        offerType,
        offerPrice,
        offerPercent,
        offerAmount,
        offerAmountAdd,
        maxAmount,
        maxAdditionFree,
        maxAddition,
        active,
        feature,
        filter,
        shipping,
        sale,
        isLate,
        isSize,
        isMax,
        orderMax,
        dateStart,
        dateExpire,
        dayStart,
        dayEnd,
        type,
        status,
        orderId,
        parentId,
        unitId,
        brandId,
        sizeId,
        createdAt,
        updatedAt,
        unit,
        // childrens,
      ];
}
