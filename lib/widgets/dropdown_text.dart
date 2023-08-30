import 'package:flutter/material.dart';

class DropDownText extends StatefulWidget {
  const DropDownText({super.key, required this.activity});

  final String activity;

  @override
  State<DropDownText> createState() => _DropDownTextState();
}

class _DropDownTextState extends State<DropDownText> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 12, bottom: 12),
          child: TextButton(
              onPressed: () {
                setState(() {
                  _isVisible =
                      !_isVisible; // Cambia la visibilidad al hacer clic.
                });
              },
              child: Row(
                children: const [
                  Text(
                    'Servicios',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.expand_more)
                ],
              )),
        ),
        Visibility(
            visible: _isVisible,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink[200],
                  borderRadius: BorderRadius.circular(16)),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    widget.activity,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
