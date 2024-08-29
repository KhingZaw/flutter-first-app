import 'package:flutter/material.dart';

class MoreInformationRow extends StatefulWidget {
  final String label;
  final String value;
  const MoreInformationRow(
      {super.key, required this.label, required this.value});

  @override
  State<MoreInformationRow> createState() => _MoreInformationRowState();
}

class _MoreInformationRowState extends State<MoreInformationRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.label,
          style: const TextStyle(color: Colors.grey, fontSize: 16.0),
        ),
        Text(
          widget.value,
          style: const TextStyle(color: Colors.grey, fontSize: 16.0),
        ),
      ],
    );
  }
}
