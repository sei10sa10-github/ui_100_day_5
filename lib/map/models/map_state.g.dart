// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapState _$_$_MapStateFromJson(Map<String, dynamic> json) {
  return _$_MapState(
    (json['landmarks'] as List)
            ?.map((e) => e == null
                ? null
                : LandmarkInfo.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_MapStateToJson(_$_MapState instance) =>
    <String, dynamic>{
      'landmarks': instance.landmarks,
    };
