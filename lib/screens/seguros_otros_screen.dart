import 'package:flutter/material.dart';
import 'package:perezyeregui/widgets/custom_appbar.dart';
import 'package:perezyeregui/widgets/footer.dart';
import 'package:perezyeregui/widgets/presentaciones/seguro_automotor.dart';
import 'package:perezyeregui/widgets/presentaciones/seguro_otros.dart';

class SegurosOtrosScreen extends StatelessWidget {
  const SegurosOtrosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              SeguroOtros(),
              Footer(),
            ],
          ),
        ));
  }
}
