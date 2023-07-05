// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      phoneNumber: json['phoneNumber'] as String,
      token: json['token'] as String,
      isVerified: json['isVerified'] as bool,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'token': instance.token,
      'isVerified': instance.isVerified,
    };
