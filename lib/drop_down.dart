import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  String? value;
  String? labelText;
  void Function(String?)? onChanged;
  List<String> items;
  String? Function(String?)? validator;
  DropDown({
    super.key,
    required this.items,
    this.labelText,
    this.onChanged,
    this.validator,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 14,
        ),
      ),
      items: items.map((item) {
        return DropdownMenuItem<String>(value: item, child: Text(item));
      }).toList(),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
