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
      backgroundColor: Color(0xFF5C5664),
      
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF5C5664),
          width: double.infinity,
          child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    CustomAppBar(),
    Encabezado(),
              SizedBox(height: 100),
              SegurosWidget(),
              SizedBox(height: 40),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
