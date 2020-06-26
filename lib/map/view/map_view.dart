import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animator/animator.dart';
import 'package:ui_100_day_5/map/models/landmark_info.dart';
import 'package:ui_100_day_5/map/models/map_state.dart';

class MapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final landmarks = context.select((MapState s) => s.landmarks);
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background.jpg')),
        ),
        child: landmarks.isEmpty
            ? getProgressIndicator()
            : getMapOverlayWidget(landmarks),
      ),
    );
  }

  Widget getProgressIndicator() {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.5),
            Colors.black.withOpacity(0.2),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topCenter,
        ),
      ),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget getMapOverlayWidget(List<LandmarkInfo> landmarks) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.5),
            Colors.black.withOpacity(0.2),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topCenter,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 250,
              padding: EdgeInsets.all(12),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 1 / 1.3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Flexible(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  './assets/images/${landmarks[index].image}'),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.grey.withOpacity(.3),
                                              borderRadius:
                                                  BorderRadius.circular(15.0)),
                                          child: Text(
                                            '2.1 mi',
                                            style: TextStyle(fontSize: 12.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      landmarks[index].name,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(
                                    Icons.star_border,
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          makePoint(140, 40),
          makePoint(190, 190),
          makePoint(219, 60),
        ],
      ),
    );
  }

  Widget makePoint(double top, double left) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue.withOpacity(.3),
        ),
        child: Animator<double>(
          duration: Duration(seconds: 1),
          tween: Tween<double>(begin: 4.0, end: 6.0),
          cycles: 0,
          builder: (context, animatorState, child) {
            return Center(
              child: Container(
                margin: EdgeInsets.all(animatorState.value),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
