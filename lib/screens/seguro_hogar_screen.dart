import 'package:flutter/material.dart';
import 'package:perezyeregui/widgets/custom_appbar.dart';
import 'package:perezyeregui/widgets/footer.dart';
import 'package:perezyeregui/widgets/presentaciones/seguro_hogar.dart';

class SeguroHogarScreen extends StatelessWidget {
  const SeguroHogarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              SeguroHogar(),
              Footer(),
            ],
          ),
        ));
  }
}
