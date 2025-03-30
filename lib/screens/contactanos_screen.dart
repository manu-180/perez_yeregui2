import 'package:flutter/material.dart';
import 'package:perezyeregui/widgets/contacto.dart';
import 'package:perezyeregui/widgets/custom_appbar.dart';
import 'package:perezyeregui/widgets/footer.dart';

class ContactanosScreen extends StatelessWidget {
  const ContactanosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [CustomAppBar(),Contacto(), Footer()],
        ),
      ),
    );
  }
}
