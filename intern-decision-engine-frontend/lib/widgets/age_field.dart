import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../colors.dart';

// A custom text form field widget for national ID input
class AgeTextFormField extends StatelessWidget {
  // Properties for initial value, on changed event handler and validator function
  final String? initialValue;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;

  const AgeTextFormField({
    Key? key,
    this.initialValue,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  // Builds the text form field widget with customized decoration and validation
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      style: const TextStyle(color: AppColors.textColor),
      decoration: const InputDecoration(
        labelText: 'Age',
        labelStyle: TextStyle(color: AppColors.textColor),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.textColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.textColor),
        ),
      ),
      cursorColor: AppColors.textColor,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'\d')),
        LengthLimitingTextInputFormatter(2),
      ],
      keyboardType: TextInputType.number,

      // Rudimentary client side verification of the age
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter age.';
            }
            if (value.length > 2) {
              return 'Maximum age is 99.';
            }
            if (int.parse(value) < 18) {
              return 'You are young for loan.';
            }
            return null;
          },
      onChanged: onChanged,

      // Set autovalidate mode to trigger validation on user interaction
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}