import 'package:flutter/material.dart';

enum DriverStatus {
  driving('Driving'),
  on('On'),
  off('Off'),
  sleeping('Sleeping');

  final String title;
  const DriverStatus(this.title);
}

class DriverStatusWidget extends StatefulWidget {
  const DriverStatusWidget({super.key});

  @override
  State<DriverStatusWidget> createState() => _DriverStatusWidgetState();
}

class _DriverStatusWidgetState extends State<DriverStatusWidget> {
  DriverStatus _driverStatus = DriverStatus.driving;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF41B631),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Current Status',
                style: TextStyle(
                  fontSize: 12,
                  height: 14.4 / 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Gilroy',
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                _driverStatus.title,
                style: const TextStyle(
                  fontSize: 36,
                  height: 43.2 / 36,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Gilroy',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: 56,
            width: 56,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(19),
            child: Image.asset(
              'assets/arrow_down.png',
            ),
          ),
        ],
      ),
    );
  }
}
