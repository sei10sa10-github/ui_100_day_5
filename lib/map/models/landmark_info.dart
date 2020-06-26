import 'package:freezed_annotation/freezed_annotation.dart';

part 'landmark_info.freezed.dart';
part 'landmark_info.g.dart';

@freezed
abstract class LandmarkInfo with _$LandmarkInfo {
  const factory LandmarkInfo({@required String name, @required String image}) = _LandmarkInfo;
  factory LandmarkInfo.fromJson(Map<String, dynamic> json) => _$LandmarkInfoFromJson(json);
}