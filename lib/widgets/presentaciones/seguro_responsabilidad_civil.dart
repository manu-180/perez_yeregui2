import 'package:flutter/material.dart';

class SeguroResponsabilidadCivil extends StatelessWidget {
  const SeguroResponsabilidadCivil({super.key});

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
            'assets/images/civil.png',
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
                "Responsabilidad Civil Profesional",
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
                        text: '¿A qué se le llama Seguro de Responsabilidad Civil Profesional?\n\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text:
                            'Es muy importante conocer los alcances y responsabilidades que implica la actividad profesional. Y qué tipo de seguro la ampara.\n'
                            'Cuando hablamos de responsabilidad civil, nos referimos a la obligación que una persona tiene de reparar un daño causado a otra, a través del pago de un resarcimiento o indemnización.\n\n'
                            'A través de este tipo de cobertura, pueden hacer frente a los daños materiales o personales que hayan causado a sus clientes, mediante el ejercicio de su profesión. Ya sea de forma involuntaria o por acción u omisión.\n\n'
                            'Este producto permite que los profesionales puedan asegurar su patrimonio frente a reclamos de terceros que deriven del desempeño de su actividad profesional.  La amplia gama de coberturas incluye a:\n\n'
                            '• Contadores\n• Abogados\n• Profesionales de la Salud (Médicos, Odontólogos, Bioquímicos, Farmacéuticos, Psicólogos, Kinesiólogos, Técnicos y Auxiliares de Medicina, entre otros)\n• Productores de Seguros\n• Administradores de Consorcios\n• Arquitectos\n• Ingenieros\n• Locadores de Inmuebles\n• Sujetos del GNC\n\n'
                            'La asistencia, entre otros beneficios, incluye Asesoramiento, Asistencia Legal y Defensa en Juicio.',
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
            'assets/images/civil.png',
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
                "Responsabilidad Civil Profesional",
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
                    color: Colors.black87,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text: '¿A qué se le llama Seguro de Responsabilidad Civil Profesional?\n\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Es muy importante conocer los alcances y responsabilidades que implica la actividad profesional. Y qué tipo de seguro la ampara.\n'
                          'Cuando hablamos de responsabilidad civil, nos referimos a la obligación que una persona tiene de reparar un daño causado a otra, a través del pago de un resarcimiento o indemnización.\n\n'
                          'A través de este tipo de cobertura, pueden hacer frente a los daños materiales o personales que hayan causado a sus clientes, mediante el ejercicio de su profesión. Ya sea de forma involuntaria o por acción u omisión.\n\n'
                          'Este producto permite que los profesionales puedan asegurar su patrimonio frente a reclamos de terceros que deriven del desempeño de su actividad profesional.  La amplia gama de coberturas incluye a:\n\n'
                          '• Contadores\n• Abogados\n• Profesionales de la Salud (Médicos, Odontólogos, Bioquímicos, Farmacéuticos, Psicólogos, Kinesiólogos, Técnicos y Auxiliares de Medicina, entre otros)\n• Productores de Seguros\n• Administradores de Consorcios\n• Arquitectos\n• Ingenieros\n• Locadores de Inmuebles\n• Sujetos del GNC\n\n'
                          'La asistencia, entre otros beneficios, incluye Asesoramiento, Asistencia Legal y Defensa en Juicio.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}