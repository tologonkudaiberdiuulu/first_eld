import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
    required this.count,
    required this.title,
  });

  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$title: ',
          style: TextStyle(
            color: const Color(0xFC293E66).withOpacity(0.4),
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
            height: 1.2,
            fontSize: 14,
          ),
        ),
        Text(
          '$count',
          style: const TextStyle(
            color: Color(0xFC293E66),
            fontWeight: FontWeight.w600,
            fontFamily: 'Gilroy',
            height: 1.2,
            fontSize: 14,
          ),
        ),
        const SizedBox(width: 8),
        Image.asset(
          'assets/arrow_down.png',
          height: 18,
          width: 12,
          color: const Color(0xFF1C293E),
          // fit: BoxFit.cover,
        ),
      ],
    );
  }
}
