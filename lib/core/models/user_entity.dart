import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int? id;
  final String? nameFirst;
  final String? nameLast;
  final String? name;
  final String? username;
  final String? phone;
  final String? email;
  final int? isAvailable;
  final int? vip;
  final int? countryId;
  final dynamic? cityId;
  final dynamic? branchId;
  final dynamic? groupId;
  final dynamic? addressId;
  final dynamic? image;
  final dynamic? gender;
  final String? genderName;
  final DateTime? birthDate;
  final dynamic? code;
  final dynamic? codeExpire;
  final dynamic? smsCode;
  final dynamic? smsCodeExpire;
  final int? wallet;
  final int? point;
  final String? locale;
  final dynamic? latitude;
  final dynamic? longitude;
  final dynamic? polygon;
  final int? active;
  final String? lastActive;
  final String? createdAt;
  final String? updatedAt;

  const UserEntity({
    this.id,
    this.nameFirst,
    this.nameLast,
    this.name,
    this.username,
    this.phone,
    this.email,
    this.isAvailable,
    this.vip,
    this.countryId,
    this.cityId,
    this.branchId,
    this.groupId,
    this.addressId,
    this.image,
    this.gender,
    this.genderName,
    this.birthDate,
    this.code,
    this.codeExpire,
    this.smsCode,
    this.smsCodeExpire,
    this.wallet,
    this.point,
    this.locale,
    this.latitude,
    this.longitude,
    this.polygon,
    this.active,
    this.lastActive,
    this.createdAt,
    this.updatedAt,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        nameFirst,
        nameLast,
        name,
        username,
        phone,
        email,
        isAvailable,
        vip,
        countryId,
        cityId,
        branchId,
        groupId,
        addressId,
        image,
        gender,
        genderName,
        birthDate,
        code,
        codeExpire,
        smsCode,
        smsCodeExpire,
        wallet,
        point,
        locale,
        latitude,
        longitude,
        polygon,
        active,
        lastActive,
        createdAt,
        updatedAt,
      ];
}
