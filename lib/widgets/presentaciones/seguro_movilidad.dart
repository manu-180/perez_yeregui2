import 'package:flutter/material.dart';

class SeguroMovilidad extends StatelessWidget {
  const SeguroMovilidad({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth > 1000 ? 40 : 20,
          vertical: 40,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF5F5F5),
              Color(0xFFE0E0E0),
            ],
          ),
        ),
        child: screenWidth > 1000
            ? _buildDesktopLayout(context)
            : _buildMobileLayout(context),
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/bici.png',
            width: 500,
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 40),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Seguro Integral Ciclistas / Ecomovilidad",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.05),
                child: _buildRichText(),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/bici.png',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Seguro Integral Ciclistas / Ecomovilidad",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              _buildRichText(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRichText() {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 20,
          color: Color(0xFF5C5664),
          height: 1.5,
        ),
        children: [
          TextSpan(
            text:
                'Si cuidás el planeta, nosotros te cuidamos a vos y a tu monopatín.\nEcomovilidad es moverse sin dañar el medio ambiente. Movete tranquilo con una cobertura integral, combinando seguros responsabilidad civil, robo, accidentes personales y salud.\n\n',
          ),
          TextSpan(
            text: 'COBERTURAS PRINCIPALES\n\n',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text:
                '• Robo: en República Argentina. Posibilidad de cubrir por robo accesorios fijos de la bicicleta.\n'
                '• Accidentes Personales para el ciclista. Incluye muerte accidental, invalidez y asistencia médico farmacéutica.\n'
                '• Salud: cobertura indemnizatoria que complementa en forma independiente a cualquier otro tipo de prestación similar. En este caso es un seguro de fracturas como consecuencia inmediata de un accidente.\n'
                '• Responsabilidad Civil del Ciclista: cobertura por daños a terceros como consecuencia del uso de bicicletas. Ámbito de la cobertura: República Argentina. Sin franquicias.\n\n',
          ),
          TextSpan(
            text: 'Asegurar:\n\n',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text:
                '• BICICLETAS ALTA-MEDIA GAMA\n'
                '• BICICLETAS ELECTRICAS\n'
                '• MONOPATINES ELECTRICOS\n'
                '• MOTOS ELECTRICAS QUE NO PUEDEN PATENTARSE\n',
          ),
        ],
      ),
    );
  }
}
