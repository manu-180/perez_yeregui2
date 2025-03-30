import 'package:flutter/material.dart';
import 'package:perezyeregui/widgets/custom_appbar.dart';
import 'package:perezyeregui/widgets/footer.dart';
import 'package:perezyeregui/widgets/presentaciones/seguro_automotor.dart';
import 'package:perezyeregui/widgets/presentaciones/seguro_mercados_especiales.dart';
import 'package:perezyeregui/widgets/presentaciones/seguro_responsabilidad_civil.dart';

class SegurosMercadosEspecialesScreen extends StatelessWidget {
  const SegurosMercadosEspecialesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              SeguroMercadosEspeciales(),
              Footer(),
            ],
          ),
        ));
  }
}
