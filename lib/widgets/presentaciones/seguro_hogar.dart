import 'package:flutter/material.dart';

class SeguroHogar extends StatelessWidget {
  const SeguroHogar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth > 1000 ? 40 : 20,
          vertical: 40,
        ),
        decoration: const BoxDecoration(
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
            'assets/images/hogar.png',
            width: 500,
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 40),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Seguro Combinado Familiar",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.05),
                child: _buildRichText(),
              ),
              const SizedBox(height: 50),
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
            'assets/images/hogar.png',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Seguro Combinado Familiar",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              _buildRichText(),
            ],
          ),
        ),
      ],
    );
  }

  static Widget _buildRichText() {
    return RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 20,
          color: Color(0xFF5C5664),
          height: 1.5,
        ),
        children: [
          TextSpan(
            text: '\n\nCOBERTURAS PARA EL HOGAR\n\n',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text:
                '• Daños totales y parciales a la vivienda por incendio, explosión o derrumbe.\n'
                '• Daños de la naturaleza: por rayo, vientos huracanados, granizo, terremoto, caídas de árboles.\n'
                '• Gastos de limpieza y remoción de escombros; alojamiento y mudanza; guardamuebles.\n'
                '• Daños al contenido: por incendio, explosión, derrumbe, rayo, robo, hurto, daños eléctricos, daños por intento de robo.\n'
                '• Daños a la tecnología: por incendio, rayo, explosión, robo, hurto, daños eléctricos, accidente; inundación.\n'
                '• Daños a cristales, sanitarios, mesadas y granitos.\n'
                '• Pérdida de alimentos refrigerados.\n\n',
          ),
          TextSpan(
            text: 'COBERTURAS FUERA DEL HOGAR\n\n',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text:
                '• Robo y todo riesgo para la tecnología que use fuera del hogar.\n'
                '• Reembolso de gastos para el remplazo de documentos por incendio o robo para todo el grupo familiar.\n'
                '• Robo e incendio para bienes trasladados a un domicilio temporario por vacaciones.\n'
                '• Bienes recientemente adquiridos: ¡asegurado ni bien salís de la tienda!\n\n',
          ),
          TextSpan(
            text: 'ADICIONALES\n\n',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text:
                '• Daños por agua al edificio y al contenido producido por fallas en redes e instalaciones sanitarias de la vivienda.\n'
                '• Coberturas para el personal doméstico y para el personal eventual que pueda trabajar en el hogar.\n'
                '• Aficionados al golf: efectos personales, palos, responsabilidad civil.\n',
          ),
        ],
      ),
    );
  }
}
