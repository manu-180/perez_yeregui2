import 'package:flutter/material.dart';

class SeguroAutomotor extends StatelessWidget {
  const SeguroAutomotor({super.key});

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
            'assets/images/auto.png',
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
                "Seguro Automotor",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.05),
                child: _buildSeguroText(),
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
            'assets/images/auto.png',
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
                "Seguro Automotor",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C5664),
                ),
              ),
              SizedBox(height: 20),
              _buildSeguroText(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSeguroText() {
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
                'Asegura tu auto con el respaldo de la compañía #1 y con nuestro asesoramiento Seguros Perez Yeregui & Asociados. Vas a recibir mejor asesoramiento y acompañamiento y en caso de siniestro, nos vamos a ocupar de todos los trámites.\n\n'
                'Solicitar cotización por WhatsApp al +54 911 6927-0009 o por mail a seguros@perezyeregui.com.ar\n\n',
          ),
          // NEGRITA 1
          TextSpan(
            text:
                '• Cobertura Todo Riesgo con franquicia fija y % variable sobre suma asegurada\n\n',
            style: TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
),

          ),
          TextSpan(
            text:
                '• Responsabilidad Civil\n• Perdida total y parcial por Robo\n• Perdida total y parcial por Incendio\n• Destrucción total.\n• Daños parciales.\n• Rotura de Cristales, Cerraduras y Antena.\n• Granizo\n• Asistencia Penal\n• Bonificación por Buen Resultado\n• Servicio de Gestoría\n• Descuentos por Alarma y sistemas de rastreo\n• Reposición de O Km por robo total (según condiciones contractuales).\n• Robo Parcial, Indemnización de cubiertas sin desgaste, crique y llave de ruedas\n• Auto sustituto (por diez días ante robo total)\n• Asistencia Mecánica / Grúa\n\n',
          ),
          // NEGRITA 2
          TextSpan(
            text: '• Cobertura Tercero Completo – C Full\n\n',
            style: TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
),

          ),
          TextSpan(
            text:
                '• Responsabilidad Civil.\n• Perdida total y parcial por Robo.\n• Perdida total y parcial por Incendio\n• Destrucción total por Accidente.\n• Rotura de Cristales, Cerraduras y Antena\n• Granizo\n• Asistencia Penal.\n• Bonificación por Buen Resultado.\n• Servicio de Gestoría.\n• Descuentos por alarma y sistemas de rastreo\n• Asistencia Mecánica Grúa*\n\n',
          ),
          // NEGRITA 3
          TextSpan(
            text: '• Los autos clásicos también tienen su cobertura\n\n',
            style: TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
),

          ),
          TextSpan(
            text:
                'Con el Seguro para Autos Clásicos podrás proteger esa joya mecánica que tanto cuidado merece. Ideal para coleccionistas, restauradores de autos históricos/antiguos o fanáticos de los Hot Rod.\n'
                'Opción ideada para proteger a rodados con más de 30 años de antigüedad y que conserven el 80% de sus partes originales en buen estado y funcionamiento.\n'
                'Los alcances de la cobertura incluyen al uso específico o participación en eventos particulares, exposiciones o carreras de regularidad (no de velocidad).\n\n'),
                
                TextSpan(
            text:'Seguro para Autos Clásicos incluye:\n\n', style: TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
),),
                TextSpan(
            text:'• Robo total\n• Incendio total\n• Destrucción Total\n• Responsabilidad Civil hacia terceros transportados y no transportados y coberturas de casco -según normas de suscripción-.\n• Servicio de grúa\n',
          ),
        ],
      ),
    );
  }
}
