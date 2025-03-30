import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonSeguros extends StatelessWidget {
  final String text;
  final String rute;

  const ButtonSeguros({super.key, required this.text, required this.rute});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return TextButton(
      child: Text(
        text,
        style: TextStyle(fontSize: size.width * 0.01),
      ),
      onPressed: () => context.go(rute),
    );
  }
}
