import 'package:flutter/material.dart';
import 'package:perezyeregui/widgets/custom_appbar.dart';
import 'package:perezyeregui/widgets/encabezado.dart';
import 'package:perezyeregui/widgets/footer.dart';
import 'package:perezyeregui/widgets/seguros.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Encabezado(),
              SizedBox(height: 100),
              SegurosWidget(),
              SizedBox(height: 150),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
