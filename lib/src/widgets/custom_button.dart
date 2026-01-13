import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function() onTap;
  final String? buttonText;
  const CustomButton({
    super.key,
    required this.onTap,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.blue, Colors.blueAccent],
          ),
          borderRadius: BorderRadius.circular(8),
        ),

        child: Row(
          mainAxisAlignment: .center,
          children: [
            Text(
              buttonText ?? 'Save',
              style: const TextStyle(
                color: Colors.white,
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
