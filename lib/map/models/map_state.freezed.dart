// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MapState _$MapStateFromJson(Map<String, dynamic> json) {
  return _MapState.fromJson(json);
}

class _$MapStateTearOff {
  const _$MapStateTearOff();

  _MapState call([List<LandmarkInfo> landmarks = const []]) {
    return _MapState(
      landmarks,
    );
  }
}

// ignore: unused_element
const $MapState = _$MapStateTearOff();

mixin _$MapState {
  List<LandmarkInfo> get landmarks;

  Map<String, dynamic> toJson();
  $MapStateCopyWith<MapState> get copyWith;
}

abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
  $Res call({List<LandmarkInfo> landmarks});
}

class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;

  @override
  $Res call({
    Object landmarks = freezed,
  }) {
    return _then(_value.copyWith(
      landmarks: landmarks == freezed
          ? _value.landmarks
          : landmarks as List<LandmarkInfo>,
    ));
  }
}

abstract class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) then) =
      __$MapStateCopyWithImpl<$Res>;
  @override
  $Res call({List<LandmarkInfo> landmarks});
}

class __$MapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(_MapState _value, $Res Function(_MapState) _then)
      : super(_value, (v) => _then(v as _MapState));

  @override
  _MapState get _value => super._value as _MapState;

  @override
  $Res call({
    Object landmarks = freezed,
  }) {
    return _then(_MapState(
      landmarks == freezed ? _value.landmarks : landmarks as List<LandmarkInfo>,
    ));
  }
}

@JsonSerializable()
class _$_MapState implements _MapState {
  const _$_MapState([this.landmarks = const []]) : assert(landmarks != null);

  factory _$_MapState.fromJson(Map<String, dynamic> json) =>
      _$_$_MapStateFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<LandmarkInfo> landmarks;

  @override
  String toString() {
    return 'MapState(landmarks: $landmarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MapState &&
            (identical(other.landmarks, landmarks) ||
                const DeepCollectionEquality()
                    .equals(other.landmarks, landmarks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(landmarks);

  @override
  _$MapStateCopyWith<_MapState> get copyWith =>
      __$MapStateCopyWithImpl<_MapState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MapStateToJson(this);
  }
}

abstract class _MapState implements MapState {
  const factory _MapState([List<LandmarkInfo> landmarks]) = _$_MapState;

  factory _MapState.fromJson(Map<String, dynamic> json) = _$_MapState.fromJson;

  @override
  List<LandmarkInfo> get landmarks;
  @override
  _$MapStateCopyWith<_MapState> get copyWith;
}
