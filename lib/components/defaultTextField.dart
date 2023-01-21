import 'package:flutter/material.dart';

Widget defaultTextField(
    {required String labelText,
    required TextEditingController controller,
    String? initialValue,
    Widget? suffixIcon,
    TextInputType? keyboardType,
    bool obscureText = false,
    bool readOnly = false,
    bool enableInteractiveSelection = true,
    required String? Function(String?) validator,
    Function(String)? onChanged,
    ValueChanged<String>? onFieldSubmitted,
    VoidCallback? onTap,
    double? width,
    double? height,
    int? maxLines}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: TextFormField(
      maxLines: maxLines,
      initialValue: initialValue,
      readOnly: readOnly,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      cursorHeight: 20,
      autofocus: false,
      validator: validator,
      onChanged: onChanged,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      enableInteractiveSelection: enableInteractiveSelection,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
        border: InputBorder.none,
        filled: true,
      ),
    ),
  );
}
