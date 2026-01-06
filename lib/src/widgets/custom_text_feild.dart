import 'package:check_list/core/utils/extensions/colors_extension.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String hintText;
  final int? maxLines;
  final bool isRequired;
  final String? initialValue;
  const CustomTextFeild({
    super.key,
    this.onChanged,
    this.validator,
    required this.hintText,
    this.maxLines,
    this.isRequired = false,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onChanged: onChanged,
      onTapUpOutside: (event) => FocusScope.of(context).unfocus(),
      maxLines: maxLines,
      validator: validator,
      decoration: InputDecoration(
        hint: Text(hintText),
        label: RichText(
          text: TextSpan(
            text: hintText,
            style: const TextStyle(color: Colors.grey, fontSize: 16),
            children: [
              if (isRequired)
                const TextSpan(
                  text: ' *',
                  style: TextStyle(color: Colors.red),
                ),
            ],
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.withOpasityX(opasity: .5)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.withOpasityX(opasity: .5)),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),

          borderSide: BorderSide(color: Colors.grey.withOpasityX(opasity: .5)),
        ),
      ),
    );
  }
}
