import 'package:flutter/material.dart';

class SeguroCelulares extends StatelessWidget {
  const SeguroCelulares({super.key});

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
            'assets/images/celular.png',
            width: 500,
            height: 500,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 40),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Seguro para Celulares y Notebooks",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.05),
                child: _buildTextoSeguro(),
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
            'assets/images/celular.png',
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
                "Seguro para Celulares y Notebooks",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C5664),
                ),
              ),
              SizedBox(height: 20),
              _buildTextoSeguro(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTextoSeguro() {
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
                'Asegurá tus dispositivos móviles y portátiles con cobertura completa frente a los riesgos más comunes. Ideal para quienes usan sus equipos para trabajar, estudiar o mantenerse conectados.\n\n',
          ),
          TextSpan(
            text: 'Cobertura para Celulares:\n',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text:
                '• Robo o hurto (con o sin violencia)\n• Daños accidentales por caída, rotura o derrame de líquidos\n• Daños por subas de tensión\n• Protección en el hogar, trabajo y en la vía pública\n• Cobertura nacional e internacional\n• Reparación o reposición según el caso\n\n',
          ),
          TextSpan(
            text: 'Cobertura para Notebooks:\n',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text:
                '• Robo o hurto\n• Daños accidentales (caídas, golpes, líquidos)\n• Daños eléctricos\n• Rotura de pantalla\n• Daños durante traslado\n• Asistencia técnica\n\n',
          ),
          TextSpan(
            text: 'Beneficios adicionales:\n',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text:
                '• Gestión de siniestros 100% online\n• Atención personalizada ante cualquier incidente\n• Asistencia las 24 hs\n• Posibilidad de asegurar múltiples equipos en un mismo contrato\n\n',
          ),
          TextSpan(
            text:
                'Contratá hoy tu seguro de celular o notebook con Seguros Pérez Yeregui & Asociados. Escribinos al +54 911 6927-0009 o por mail a seguros@perezyeregui.com.ar y obtené tu cotización en minutos.',
          ),
        ],
      ),
    );
  }
}
