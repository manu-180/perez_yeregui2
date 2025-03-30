import 'package:flutter/material.dart';

class SeguroOtros extends StatelessWidget {
  const SeguroOtros({super.key});

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
            'assets/images/otros.png',
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
                "Seguros Técnicos",
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
                        text:
                            'Protegé tus equipos electrónicos, maquinarias, equipos médicos o trabajos de construcción y montaje.\n\n',
                      ),
                      TextSpan(
                        text: 'Todo Riesgo Construcción y Montaje\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text:
                            'Ampara los riesgos producto de la construcción propiamente dicha, entre los que se cuenta el incendio, rayo, explosión, caída de aviones, robo, etc. Durante el montaje se cubre: errores, impericia, descuido y actos malintencionados, caída de partes del objeto que se monta, robo, incendio, rayo, explosión, hundimiento de tierra o desprendimiento de tierra o de rocas, etc. Se pueden cubrir todo tipo de obras de construcción tales como edificios, hoteles, escuelas, hospitales, fábricas, plantas industriales, carreteras, entre otras, y de montajes como por ejemplo montajes de maquinarias, acueductos, calderas, compresores, ascensores, motores, grúas, etc., estos pueden ser montajes individuales y desmontajes.\n\n',
                      ),
                      TextSpan(
                        text: 'Equipo de Contratistas / Agrícolas\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text:
                            'Se cubre la maquinaria y equipos a partir del momento en que se encuentre efectuando su función específica incluyendo su eventual traslado desde o hacia el lugar de trabajo, depósito u obrador en el ámbito de la República Argentina, como consecuencia de\n\n• Incendio\n• Accidente\n• Robo\n• Hurto\n\n',
                      ),
                      TextSpan(
                        text: 'Avería de Maquinarias\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text:
                            'Se amparar todo tipo de maquinarias, específicamente aquellas en las cuales un daño y/o averías puede provocar perjuicios graves de índole financiera y/o económicas, fundamentalmente maquinarias e instalaciones fijas destinadas a la producción en serie, tales como: generadores de energía (calderas, turbinas, etc.), máquinas e instalaciones distribuidoras de energía eléctrica (transformadores, etc), máquinas de producción y equipos auxiliares (bombas, compresores, etc.).',
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
            'assets/images/otros.png',
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
                "Seguros Técnicos",
                style: TextStyle(
                  fontSize: 28,
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
                        text:
                            'Protegé tus equipos electrónicos, maquinarias, equipos médicos o trabajos de construcción y montaje.\n\n',
                      ),
                      TextSpan(
                        text: 'Todo Riesgo Construcción y Montaje\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text:
                            'Ampara los riesgos producto de la construcción propiamente dicha, entre los que se cuenta el incendio, rayo, explosión, caída de aviones, robo, etc. Durante el montaje se cubre: errores, impericia, descuido y actos malintencionados, caída de partes del objeto que se monta, robo, incendio, rayo, explosión, hundimiento de tierra o desprendimiento de tierra o de rocas, etc. Se pueden cubrir todo tipo de obras de construcción tales como edificios, hoteles, escuelas, hospitales, fábricas, plantas industriales, carreteras, entre otras, y de montajes como por ejemplo montajes de maquinarias, acueductos, calderas, compresores, ascensores, motores, grúas, etc., estos pueden ser montajes individuales y desmontajes.\n\n',
                      ),
                      TextSpan(
                        text: 'Equipo de Contratistas / Agrícolas\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text:
                            'Se cubre la maquinaria y equipos a partir del momento en que se encuentre efectuando su función específica incluyendo su eventual traslado desde o hacia el lugar de trabajo, depósito u obrador en el ámbito de la República Argentina, como consecuencia de\n\n• Incendio\n• Accidente\n• Robo\n• Hurto\n\n',
                      ),
                      TextSpan(
                        text: 'Avería de Maquinarias\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text:
                            'Se amparar todo tipo de maquinarias, específicamente aquellas en las cuales un daño y/o averías puede provocar perjuicios graves de índole financiera y/o económicas, fundamentalmente maquinarias e instalaciones fijas destinadas a la producción en serie, tales como: generadores de energía (calderas, turbinas, etc.), máquinas e instalaciones distribuidoras de energía eléctrica (transformadores, etc), máquinas de producción y equipos auxiliares (bombas, compresores, etc.).',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
