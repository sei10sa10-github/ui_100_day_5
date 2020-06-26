import 'package:state_notifier/state_notifier.dart';
import 'package:ui_100_day_5/map/models/map_state.dart';
import 'package:ui_100_day_5/map/service/landmark_service.dart';

class LandmarkInfoController extends StateNotifier<MapState> with LocatorMixin {
  LandmarkInfoController(MapState state) : super(state);

  bool _isLoading = false;

  LandmarkService get service => read<LandmarkService>();

  @override
  void initState() {
    load();
  }

  void load() {
    _loadIfNecesary(() async {
      print('_loadIfNecessary is called');
      final list = await service.getLandmarkInfo();
      return state.copyWith(landmarks: list);
    });
  }

  void _loadIfNecesary(Future<MapState> Function() call) async {
    if (_isLoading) return;
    _isLoading = true;
    final newState = await call();
    _isLoading = false;
    state = newState;
  }

}