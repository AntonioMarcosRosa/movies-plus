import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String label;
  final bool isSensibleData;
  final TextInputType inputType;
  final IconData? icon;

  const CustomField({
    super.key,
    required this.isSensibleData,
    required this.label,
    required this.inputType,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        keyboardType: inputType,
        obscureText: isSensibleData,
        decoration: InputDecoration(
          prefixIcon: icon != null
              ? Icon(
                  icon,
                  color: const Color(0xff32A873),
                )
              : null,
          suffixIcon: isSensibleData
              ? const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.visibility),
                )
              : null,
          label: Text(label),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff32A873)),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
