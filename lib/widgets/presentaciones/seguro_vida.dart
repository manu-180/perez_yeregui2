import 'package:flutter/material.dart';

class SeguroVida extends StatelessWidget {
  const SeguroVida({super.key});

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
            'assets/images/vida.png',
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
                "Seguro de Vida",
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
            'assets/images/vida.png',
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
                "Seguro de Vida",
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
                'Brinda una protección para sus seres queridos ante una pérdida repentina del sustento familiar, como así también mitigar los efectos producidos ante una invalidez y/u otras enfermedades.\n\n',
          ),
          TextSpan(
            text: '•\tIndividual y Colectivo\n\n',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text:
                'Brinda una protección para sus seres queridos ante una pérdida repentina del sustento familiar, como así también mitigar los efectos producidos ante una invalidez y/u otras enfermedades.\n\n',
          ),
          TextSpan(
            text: '•\tSalud\n\n',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text:
                'Cobertura indemnizatoria / ayuda económica que puede emplearse para solventar el tratamiento de una enfermedad grave, lesión o intervención quirúrgica que se pudiera presentar.\n'
                'Protección completa y adaptable a la necesidad de cada persona. Se puede elegir libremente una, varias o todas las coberturas gracias a la flexibilidad de este producto.\n\n'
                '•\tDiagnóstico por enfermedades.\n'
                '•\tIntervenciones Quirurgicas.\n'
                '•\tTrasplantes.\n'
                '•\tRenta diaria por Internación.\n'
                '•\tRenta mensual por Cuidados prolongados.\n\n',
          ),
          TextSpan(
            text:
                'Además cuenta con el servicio prestacional para Urgencias y Emergencias médicas:\n\n',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text:
                '•\tAtención medica telefónica las 24 hs.\n'
                '•\tServicio de traslados.\n'
                '•\tSegunda opinión médica.\n'
                '•\tAsistencia a la tercera edad.\n'
                '•\tAsistencia por urgencias odontológicas.\n'
                '•\tAsistencia en viajes.\n'
                '•\tDescuento en farmacias de medicamentos recetados.\n',
          ),
          TextSpan(
            text: '•\tSeguro de Viajero – Asistencia en viaje\n',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text: '•\tSeguro de Sepelio\n\n',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text:
                'Prestacional o por reintegro, ante el fallecimiento de un ser querido, los familiares reciben contención y acompañamiento para definir los detalles necesarios para el sepelio  respetando siempre a las personas, su dolor y su privacidad, con respeto y calidez humana.',
          ),
        ],
      ),
    );
  }
}
