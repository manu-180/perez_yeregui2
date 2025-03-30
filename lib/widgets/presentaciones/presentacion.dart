import 'package:flutter/material.dart';

class Presentacion extends StatelessWidget {
  const Presentacion({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth > 1000 ? 40 : 20, // Padding horizontal dinámico
        vertical: 40,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFF5F5F5), // Fondo claro
            Color(0xFFE0E0E0), // Fondo un poco más oscuro
          ],
        ),
      ),
      child: screenWidth > 1000
          ? _buildDesktopLayout(context) // Diseño para pantallas grandes
          : _buildMobileLayout(context), // Diseño para pantallas pequeñas
    );
  }

  // Diseño para pantallas grandes (> 1000 px)
  Widget _buildDesktopLayout(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Imagen a la izquierda
        ClipRRect(
          borderRadius: BorderRadius.circular(20), // Bordes redondeados
          child: Image.asset(
            'assets/images/quienessomos.png', // Ruta de la imagen en assets
            width: 500, // Ancho de la imagen
            height: 400, // Alto de la imagen
            fit: BoxFit.cover, // Ajuste de la imagen
          ),
        ),
        SizedBox(width: 40), // Espacio entre la imagen y el texto
        // Contenido a la derecha
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título "Quienes Somos"
              Text(
                "Quienes Somos",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C5664), // Color del título
                ),
              ),
              SizedBox(height: 20), // Espacio entre el título y el texto
              // Texto descriptivo
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.05),
                child: Text(
                  "Somos una consultora/bróker conformada por un grupo de profesionales Actuarios, Licenciados en Administración y Economía y Contadores, matriculados como productores asesores de seguros con vasta experiencia en la industria aseguradora.\n\n"
                  "Nuestra estrategia de trabajo se basa en un exhaustivo análisis y permanente monitoreo de las necesidades de cada cliente.\n\n"
                  "La permanente actualización de nuestras capacidades tiene por objeto para dar a nuestros clientes y posibles prospectos, una mejor prestación de servicio y un mayor valor agregado, en la búsqueda de generar relaciones de largo plazo en entera confianza.\n\n"
                  "Auditamos su portfolio de seguros actual con el propósito de poder brindar el mejor asesoramiento, análisis de riesgo y administración de su cartera de riesgos en lo relativo a la exposición a riesgo de su patrimonio y en virtud de esto, a la adecuación de sus coberturas de seguros patrimoniales, de responsabilidad civil, vida, colectivos y ART.\n\n"
                  "Los programas de seguros son colocados en compañías de primera línea que de acuerdo a los análisis económico-financieros cumplen con los requisitos de agilidad operativa y solvencia patrimonial exigidos por la Superintendencia de Seguros de la Nación y cuentan con reaseguros adecuados en empresas de reconocida trayectoria y solidez internacional.",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF5C5664), // Color del texto
                    height: 1.5, // Espaciado entre líneas
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

  // Diseño para pantallas pequeñas (<= 1000 px)
  Widget _buildMobileLayout(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Imagen arriba
        ClipRRect(
          borderRadius: BorderRadius.circular(20), // Bordes redondeados
          child: Image.asset(
            'assets/images/quienessomos.png', // Ruta de la imagen en assets
            width: 300, // Ancho de la imagen
            height: 200, // Alto de la imagen
            fit: BoxFit.cover, // Ajuste de la imagen
          ),
        ),
        SizedBox(height: 40), // Espacio entre la imagen y el texto
        // Contenido debajo
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05), // Padding horizontal
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título "Quienes Somos"
              Text(
                "Quienes Somos",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C5664), // Color del título
                ),
              ),
              SizedBox(height: 20), // Espacio entre el título y el texto
              // Texto descriptivo
              Text(
                "Somos una consultora/bróker conformada por un grupo de profesionales Actuarios, Licenciados en Administración y Economía y Contadores, matriculados como productores asesores de seguros con vasta experiencia en la industria aseguradora.\n\n"
                "Nuestra estrategia de trabajo se basa en un exhaustivo análisis y permanente monitoreo de las necesidades de cada cliente.\n\n"
                "La permanente actualización de nuestras capacidades tiene por objeto para dar a nuestros clientes y posibles prospectos, una mejor prestación de servicio y un mayor valor agregado, en la búsqueda de generar relaciones de largo plazo en entera confianza.\n\n"
                "Auditamos su portfolio de seguros actual con el propósito de poder brindar el mejor asesoramiento, análisis de riesgo y administración de su cartera de riesgos en lo relativo a la exposición a riesgo de su patrimonio y en virtud de esto, a la adecuación de sus coberturas de seguros patrimoniales, de responsabilidad civil, vida, colectivos y ART.\n\n"
                "Los programas de seguros son colocados en compañías de primera línea que de acuerdo a los análisis económico-financieros cumplen con los requisitos de agilidad operativa y solvencia patrimonial exigidos por la Superintendencia de Seguros de la Nación y cuentan con reaseguros adecuados en empresas de reconocida trayectoria y solidez internacional.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87, // Color del texto
                  height: 1.5, // Espaciado entre líneas
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
