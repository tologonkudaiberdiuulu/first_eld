import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  const ActionWidget({
    super.key,
    required this.iconPath,
  });
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFF1C293E).withOpacity(0.08),
      ),
      padding: const EdgeInsets.all(8),
      child: Image.asset(iconPath),
    );
  }
}
