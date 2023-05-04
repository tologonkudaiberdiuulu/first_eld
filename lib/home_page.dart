import 'package:flutter/material.dart';
import 'package:home_page/widgets/top_widget.dart';

import 'widgets/action_widget.dart';
import 'widgets/driver_action_widget.dart';
import 'widgets/driver_status_widget.dart';
import 'widgets/progress_paint.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Scaffold(
          backgroundColor: const Color(0xFFF6F7F9),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xFFF6F7F9),
            title: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120),
                    color: const Color(0xFF41B631).withOpacity(0.2),
                  ),
                  child: Image.asset(
                    'assets/subtract.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Vyacheslav',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color(0xFF1C293E),
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'User #1385',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xFF41B631),
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const ActionWidget(iconPath: 'assets/theme_mode.png'),
                const SizedBox(width: 16),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const ActionWidget(iconPath: 'assets/notification.png'),
                    Positioned(
                      bottom: -2,
                      left: -2,
                      child: Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                          color: const Color(0xFF1872F6),
                        ),
                        // padding: const EdgeInsets.all(2),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(height: 2),
                            Text(
                              '5',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Gilroy',
                                fontSize: 8,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
              ],
            ),
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            physics: const ClampingScrollPhysics(),
            children: [
              const SizedBox(height: 23),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  TopWidget(count: 3, title: 'Today Trailers'),
                  TopWidget(count: 5, title: 'Shipping IDs'),
                ],
              ),
              const SizedBox(height: 28),
              Container(
                height: 172,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: SizedBox(
                  child: Stack(
                    children: [
                      CustomPaint(
                        size: const Size(600, 162),
                        painter: ProgressPainter(),
                      ),
                      Center(
                        child: Column(
                          children: const [
                            SizedBox(height: 53),
                            Text(
                              'Stop In',
                              style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 20,
                                color: Color(0xFF1C293E),
                                height: 1.2,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              '07:43',
                              style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 48,
                                color: Color(0xFF1C293E),
                                fontWeight: FontWeight.w700,
                                height: 57.6 / 48,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Row(
                children: const [
                  Expanded(
                    child: DriverActionWidget(
                      title: 'Drive Left',
                      hours: 10,
                      minutes: 31,
                      ratio: 0.7,
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: DriverActionWidget(
                      title: 'Shift Left',
                      hours: 12,
                      minutes: 24,
                      ratio: 0.2,
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: DriverActionWidget(
                      title: 'Cyrcle Left',
                      hours: 45,
                      minutes: 31,
                      ratio: 0.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              const DriverStatusWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
