import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function() onTap;
  final String? label;
  final List<Color>? colors;
  final bool isOutlined;
  const CustomButton({super.key, required this.onTap, this.label, this.colors})
    : isOutlined = false;
  const CustomButton.outlined({
    super.key,
    required this.onTap,
    this.label,
    this.colors,
  }) : isOutlined = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          gradient: isOutlined
              ? null
              : LinearGradient(
                  colors: colors ?? [Colors.blue, Colors.blueAccent],
                ),
          color: isOutlined ? Colors.white : null,
          border: isOutlined ? Border.all(color: Colors.grey, width: 1) : null,
          borderRadius: BorderRadius.circular(8),
        ),

        child: Row(
          mainAxisAlignment: .center,
          children: [
            Text(
              label ?? 'Save',
              style: TextStyle(
                color: isOutlined ? Colors.black : Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
