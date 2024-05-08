import 'package:flutter/material.dart';

enum BackgroundType { primary, secondary, success, danger, warning }

class CustomButton extends StatelessWidget {
  final String text;
  final BackgroundType backgroundType;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundType,
    required this.onPressed,
  });

  _getAlertColor() {
    switch (backgroundType) {
      case BackgroundType.primary:
        return Colors.blue;
      case BackgroundType.secondary:
        return Colors.grey[400];
      case BackgroundType.success:
        return Colors.green;
      case BackgroundType.danger:
        return Colors.red;
      case BackgroundType.warning:
        return Colors.yellow[500];
      default:
        return Colors.grey;
    }
  }

  _getTextColor() {
    switch (backgroundType) {
      case BackgroundType.primary:
        return Colors.white;
      case BackgroundType.secondary:
        return Colors.white;
      case BackgroundType.success:
        return Colors.white;
      case BackgroundType.danger:
        return Colors.white;
      case BackgroundType.warning:
        return Colors.black;
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: _getAlertColor(),
        foregroundColor: _getTextColor(),
      ),
      child: Text(text),
    );
  }
}
