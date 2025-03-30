import 'package:flutter/material.dart';

class SeguroPyme extends StatelessWidget {
  const SeguroPyme({super.key});

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
            'assets/images/PyME.png',
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
                "Seguros Empresas",
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
                        text: '\n\nIntegral de Comercio\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Seguro para proteger los bienes de tu oficina, negocio o industria. Este seguro se adapta al tamaño de tu empresa y al sector y tipo de actividad, ya sea minorista, mayorista o de servicios.\n\n•\tDaños totales y parciales al local por incendio, explosión o derrumbe\n•\tDaños de la naturaleza: por rayo, vientos huracanados, granizo, terremoto.\n•\tGastos por limpieza de contenidos y remoción de escombros; sueldos y jornales, alquileres, gastos fijos.\n•\tDaños a los carteles y marquesinas\n•\tDaños a las instalaciones y/o bienes de uso por incendio, explosión, derrumbe, rayo\n•\tDaños a la mercadería por incendio, robo, pérdida de frío.\n•\tDaños a cristales\n•\tDaños a la tecnología del comercio por incendio, rayo, explosión, robo, daños eléctricos, accidentes.\n\n',
                      ),
                      TextSpan(
                        text: 'Integral de Consorcios\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Seguro destinado a cubrir las partes comunes del edificio y es adaptable a las necesidades de cada uno.\n\n•\tIncendio Edificio\n•\tIncendio Contenido (con posibilidad de extensión a unidades funcionales)\n•\tDaños por agua e Inundación (con posibilidad de extensión a unidades funcionales)\n•\tDaños y Roturas de Cristales (incluidas las inscripciones que contengan)\n•\tResponsabilidad Civil Comprensiva\n•\tResponsabilidad Civil Rotura de Cañerías\n•\tResponsabilidad Civil Linderos\n•\tResponsabilidad Civil Ascensores y/ montacargas\n•\tResponsabilidad Civil Guarda de Vehículos\n•\tRobo y/o Hurto del Mobiliario del consorcio así como matafuegos, luces de emergencia y cámaras de seguridad, entre otros.\n•\tDaños por eventos de la naturaleza (Huracán, Vendaval, Ciclón y Tornado, Granizo y Terremoto)\n•\tDaños por tensión al contenido y al edificio\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro de Transporte de Mercaderias\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Asegura tu carga de aquellas pérdidas que puedan sufrir durante el transporte terrestre, marítimo, y/o aéreo. Cobertura para viajes locales, importaciones o exportaciones.\n\n',
                      ),
                      TextSpan(
                        text: 'Transporte Terrestre:\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Pólizas por viaje o por periodo donde se cubren las pérdidas y averías de las mercancías transportadas a causa de choque, vuelco, desbarrancamiento o descarrilamiento del vehículo transportador, derrumbe, caída de árboles o postes, incendio, explosión, rayo, huracán, ciclón, tornado, inundación, aluvión y alud.\n\n•\tRobo.\n•\tRobo en carga y descarga.\n•\tHurto, desaparición y falta de entrega.\n•\tDaños en operaciones de carga y descarga.\n•\tParalización de máquina frigorífica.\n•\tTodo riesgo.\n•\tEximición responsabilidad transportista.\n•\tHuelga y Vandalismo.\n\n',
                      ),
                      TextSpan(
                        text: 'Transporte Maritimo\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: '•\tPérdidas y/o daños de las mercaderías aseguradas, como consecuencia de choque, incendio o explosión, naufragio y/o varamiento del buque ( L.A.P).\n•\tFalta de entrega de bulto entero.\n•\tTodo riesgo.\n\n',
                      ),
                      TextSpan(
                        text: 'Transporte Aéreo\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: '•\tPérdidas y/o daños de las mercaderías aseguradas, como consecuencia de caída, colisión, falla del tren de aterrizaje, aterrizaje forzoso en un lugar no habilitado para ello del avión transportador, incendio, explosión o rayo.\n•\tFalta de entrega de bulto entero.\n•\tTodo riesgo.\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro de Caución\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'El seguro de Caución es una de las herramientas más eficaces para todas aquellas personas físicas o jurídicas que desarrollan actividades comerciales o profesionales y que por determinadas exigencias legales, reglamentarias o contractuales, necesitan garantizar el cumplimiento de sus obligaciones contraídas frente a terceros.\n\n'
                      ),
                      TextSpan(
                        text: 'Tipos de Seguro de Caución:\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: '* OBRA PÚBLICA-PRIVADA * SERVICIO/SUMINISTROS PÚBLICO-PRIVADO * GARANTÍAS ADUANERAS\n* ADMINISTRADORES DE SOCIEDADES * GARANTIA DE ALQUILERES\n',
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
            'assets/images/PyME.png',
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
                "Seguros Empresas",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Contenido igual que en desktop...'
              )
            ],
          ),
        ),
      ],
    );
  }
}