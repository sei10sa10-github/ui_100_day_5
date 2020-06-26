// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'landmark_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LandmarkInfo _$LandmarkInfoFromJson(Map<String, dynamic> json) {
  return _LandmarkInfo.fromJson(json);
}

class _$LandmarkInfoTearOff {
  const _$LandmarkInfoTearOff();

  _LandmarkInfo call({@required String name, @required String image}) {
    return _LandmarkInfo(
      name: name,
      image: image,
    );
  }
}

// ignore: unused_element
const $LandmarkInfo = _$LandmarkInfoTearOff();

mixin _$LandmarkInfo {
  String get name;
  String get image;

  Map<String, dynamic> toJson();
  $LandmarkInfoCopyWith<LandmarkInfo> get copyWith;
}

abstract class $LandmarkInfoCopyWith<$Res> {
  factory $LandmarkInfoCopyWith(
          LandmarkInfo value, $Res Function(LandmarkInfo) then) =
      _$LandmarkInfoCopyWithImpl<$Res>;
  $Res call({String name, String image});
}

class _$LandmarkInfoCopyWithImpl<$Res> implements $LandmarkInfoCopyWith<$Res> {
  _$LandmarkInfoCopyWithImpl(this._value, this._then);

  final LandmarkInfo _value;
  // ignore: unused_field
  final $Res Function(LandmarkInfo) _then;

  @override
  $Res call({
    Object name = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

abstract class _$LandmarkInfoCopyWith<$Res>
    implements $LandmarkInfoCopyWith<$Res> {
  factory _$LandmarkInfoCopyWith(
          _LandmarkInfo value, $Res Function(_LandmarkInfo) then) =
      __$LandmarkInfoCopyWithImpl<$Res>;
  @override
  $Res call({String name, String image});
}

class __$LandmarkInfoCopyWithImpl<$Res> extends _$LandmarkInfoCopyWithImpl<$Res>
    implements _$LandmarkInfoCopyWith<$Res> {
  __$LandmarkInfoCopyWithImpl(
      _LandmarkInfo _value, $Res Function(_LandmarkInfo) _then)
      : super(_value, (v) => _then(v as _LandmarkInfo));

  @override
  _LandmarkInfo get _value => super._value as _LandmarkInfo;

  @override
  $Res call({
    Object name = freezed,
    Object image = freezed,
  }) {
    return _then(_LandmarkInfo(
      name: name == freezed ? _value.name : name as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

@JsonSerializable()
class _$_LandmarkInfo implements _LandmarkInfo {
  const _$_LandmarkInfo({@required this.name, @required this.image})
      : assert(name != null),
        assert(image != null);

  factory _$_LandmarkInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_LandmarkInfoFromJson(json);

  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'LandmarkInfo(name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandmarkInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image);

  @override
  _$LandmarkInfoCopyWith<_LandmarkInfo> get copyWith =>
      __$LandmarkInfoCopyWithImpl<_LandmarkInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LandmarkInfoToJson(this);
  }
}

abstract class _LandmarkInfo implements LandmarkInfo {
  const factory _LandmarkInfo({@required String name, @required String image}) =
      _$_LandmarkInfo;

  factory _LandmarkInfo.fromJson(Map<String, dynamic> json) =
      _$_LandmarkInfo.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  _$LandmarkInfoCopyWith<_LandmarkInfo> get copyWith;
}
