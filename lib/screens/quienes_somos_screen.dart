import 'package:flutter/material.dart';
import 'package:perezyeregui/widgets/custom_appbar.dart';
import 'package:perezyeregui/widgets/footer.dart';
import 'package:perezyeregui/widgets/presentaciones/presentacion.dart';

class QuienesSomosScreen extends StatelessWidget {
  const QuienesSomosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              Presentacion(),
              Footer(),
            ],
          ),
        ));
  }
}
