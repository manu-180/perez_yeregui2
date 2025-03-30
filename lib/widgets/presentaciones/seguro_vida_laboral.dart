import 'package:flutter/material.dart';

class SeguroVidaLaboral extends StatelessWidget {
  const SeguroVidaLaboral({super.key});

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
            'assets/images/vida-laboral.png',
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
                "Seguro Laboral",
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
                      color: Color(0xFF5C5664),
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: '• ',
                      ),
                      TextSpan(
                        text: 'ART',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: ' - Seguros de Riesgo de Trabajo\n\n',
                      ),
                      TextSpan(
                        text: '• ',
                      ),
                      TextSpan(
                        text: 'Accidentes Personales\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text:
                            'Seguro que brinda protección al asegurado en caso de muerte o incapacidades permanentes sean totales o parciales, sufridas en ocasión de un accidente.\n'
                            'Destinado a personas que por su ocupación o profesión independiente realizan actividades laborales de forma autónoma.  También pueden contratar estas pólizas aquellas personas que tengan  personal a su cargo en forma transitoria. Cubre a los asegurados durante la actividad laboral y el trayecto in itinere (Se encuentra incluido el uso de moto durante el trayecto in itinere).\n\n'
                            '• Muerte accidental\n'
                            '• Invalidez total y/o parcial permanente\n'
                            '• Asistencia médica prestacional\n'
                            '• Renta diaria por internación\n'
                            '• Reintegro de gastos de sepelio\n',
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
            'assets/images/vida-laboral.png',
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
                "Seguro Laboral",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF5C5664),
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text: '• ',
                    ),
                    TextSpan(
                      text: 'ART',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(
                      text: ' - Seguros de Riesgo de Trabajo\n\n',
                    ),
                    TextSpan(
                      text: '• ',
                    ),
                    TextSpan(
                      text: 'Accidentes Personales\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(
                      text:
                          'Seguro que brinda protección al asegurado en caso de muerte o incapacidades permanentes sean totales o parciales, sufridas en ocasión de un accidente.\n'
                          'Destinado a personas que por su ocupación o profesión independiente realizan actividades laborales de forma autónoma.  También pueden contratar estas pólizas aquellas personas que tengan  personal a su cargo en forma transitoria. Cubre a los asegurados durante la actividad laboral y el trayecto in itinere (Se encuentra incluido el uso de moto durante el trayecto in itinere).\n\n'
                          '• Muerte accidental\n'
                          '• Invalidez total y/o parcial permanente\n'
                          '• Asistencia médica prestacional\n'
                          '• Renta diaria por internación\n'
                          '• Reintegro de gastos de sepelio\n',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
