import 'package:check_list/core/utils/extensions/colors_extension.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final Function(String)? onChanged;
  final String hintText;
  final int? maxLines;
  const CustomTextFeild({
    super.key,
    this.onChanged,
    required this.hintText,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onTapUpOutside: (event) =>
          FocusScope.of(context).unfocus(),
      maxLines: maxLines,

      decoration: InputDecoration(
        hint: Text(hintText),
        label: Text(hintText, style: const TextStyle()),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.grey.withOpasityX(opasity: .5),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.grey.withOpasityX(opasity: .5),
          ),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),

          borderSide: BorderSide(
            color: Colors.grey.withOpasityX(opasity: .5),
          ),
        ),
      ),
    );
  }
}
