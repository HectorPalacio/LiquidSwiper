import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:liquid_swiper/src/widgets/liquid_pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: liquidPages,
        fullTransitionValue: 300,
        enableLoop: true,
        enableSlideIcon: true,
        positionSlideIcon: 0.8,
        //waveType: WaveType.circularReveal,
        waveType: WaveType.liquidReveal,
        onPageChangeCallback: (activePageIndex) =>
            pageChangeCallback(activePageIndex),
        currentUpdateTypeCallback: (updateType) =>
            updateTypeCallbak(updateType),
      ),
    );
  }

  pageChangeCallback(int page) {
    print(page);
  }

  updateTypeCallbak(UpdateType updateType) {
    print(updateType);
  }
}
