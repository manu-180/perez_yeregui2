import 'package:flutter/material.dart';

class SeguroMercadosEspeciales extends StatelessWidget {
  const SeguroMercadosEspeciales({super.key});

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
            'assets/images/mercados-especiales.png',
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
                "Seguros de Mercado Específico",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.05),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: 'Seguros para Colegios\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: '•\tSeguro de Continuidad o Beca Escolar\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Asegura la continuidad del alumno...\n',
                      ),
                      TextSpan(
                        text: '•\tSeguros de Responsabilidad Civil para Directores y Representales Legales\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Ampara a directores...\n',
                      ),
                      TextSpan(
                        text: '•\tAccidentes Personales Escolares\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Los establecimientos educativos...\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro para Embarcaciones de Placer\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'La cobertura para embarcaciones puede incluir:\n• Daños totales...\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro para jet ski\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Seguro de Mascotas\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Contempla el robo, gastos veterinarios...\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro Food Trucks\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Apunta a los camiones...\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro de Riesgos Agropecuarios\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
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
            'assets/images/mercados-especiales.png',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 40),
        Padding(
                padding: EdgeInsets.only(right: size.width * 0.05),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: 'Seguros para Colegios\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: '•\tSeguro de Continuidad o Beca Escolar\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Asegura la continuidad del alumno...\n',
                      ),
                      TextSpan(
                        text: '•\tSeguros de Responsabilidad Civil para Directores y Representales Legales\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Ampara a directores...\n',
                      ),
                      TextSpan(
                        text: '•\tAccidentes Personales Escolares\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Los establecimientos educativos...\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro para Embarcaciones de Placer\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'La cobertura para embarcaciones puede incluir:\n• Daños totales...\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro para jet ski\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Seguro de Mascotas\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Contempla el robo, gastos veterinarios...\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro Food Trucks\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Apunta a los camiones...\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro de Riesgos Agropecuarios\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
      ],
    );
  }
}