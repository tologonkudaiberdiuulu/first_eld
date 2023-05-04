import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DriverActionWidget extends StatelessWidget {
  const DriverActionWidget({
    super.key,
    required this.title,
    required this.hours,
    required this.minutes,
    required this.ratio,
  });

  final String title;
  final int hours;
  final int minutes;
  final double ratio;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              height: 1.2,
              fontWeight: FontWeight.w600,
              fontFamily: 'Gilroy',
              color: const Color(0x1C293E66).withOpacity(0.4),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            '$hours:$minutes',
            style: const TextStyle(
              fontSize: 26,
              height: 1.2,
              fontWeight: FontWeight.w700,
              fontFamily: 'Gilroy',
              color: Color(0xFF1C293E),
            ),
          ),
          const SizedBox(height: 6),
          LinearPercentIndicator(
            animation: false,
            padding: EdgeInsets.zero,
            lineHeight: 6,
            animationDuration: 2000,
            percent: ratio,
            barRadius: const Radius.circular(100),
            backgroundColor: const Color(0xFFE6E8ED),
            progressColor: ratio < 0.4
                ? const Color(0xFFEE324C)
                : ratio > 0.55
                    ? const Color(0xFF41B631)
                    : const Color(0xFFFBCA00),
          ),
        ],
      ),
    );
  }
}
