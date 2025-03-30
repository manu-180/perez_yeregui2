import 'package:flutter/material.dart';
import 'package:perezyeregui/widgets/custom_appbar.dart';
import 'package:perezyeregui/widgets/footer.dart';
import 'package:perezyeregui/widgets/seguros.dart';

class ServiciosScreen extends StatelessWidget {
  const ServiciosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 30),
            SegurosWidget(),
            SizedBox(height: 100),
            Footer(),
          ],
        ),
      ),
    );
  }
}
