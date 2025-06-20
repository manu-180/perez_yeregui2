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
            'assets/images/escuela.png',
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
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '• Seguro de Continuidad o Beca Escolar\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Asegura la continuidad del alumno ante el fallecimiento o incapacidad permanente del padre responsable del pago del arancel mensual y matrícula. Cubre la escolaridad completa de los hijos hasta la finalización de sus estudios secundarios.\n\n',
                      ),
                      TextSpan(
                        text: '• Seguros de Responsabilidad Civil para Directores y Representantes Legales\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Ampara a directores y representantes legales ante eventuales reclamos de terceros respecto a su responsabilidad por la conducción del colegio.\n\n',
                      ),
                      TextSpan(
                        text: '• Accidentes Personales Escolares\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Los establecimientos educativos tienen un producto especial para proteger a los alumnos que concurren al mismo. Esta cobertura brinda respaldo ante accidentes que se puedan sufrir los alumnos normalizados dentro del establecimiento y su dependencia, como también fuera del edificio. Ya sea en salida pedagógica o recreativa y siempre que el alumno esté en situación bajo supervisión de su personal docente. En forma adicional se brinda cobertura para la cobertura completa:\n\n- Muerte accidental.\n- Incapacidad total o parcial permanente.\n- Reintegro de gastos médicos por accidente.\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro para Embarcaciones de Placer\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'La cobertura para embarcaciones puede incluir:\n- Daños totales y parciales por naufragio, varamiento, incendio, rayo y/o explosión y choque con otras embarcaciones, buques y/o aeromóvil, boyas, muelles, en gral. cualquier objeto fijo o flotante.\n- Robo total de la embarcación (casco/motor).\n- Robo parcial de los elementos fijos al casco declarados en póliza.\n- Robo del motor fuera de borda abulonado al casco.\n- Robo del bote auxiliar fuera de borda encadenado y/o guardado bajo llave en el interior de la embarcación principal y declarado en póliza.\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro para Jet Ski\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                  
                      TextSpan(
                        text: 'Seguro de Mascotas\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Contempla el gasto veterinario en caso de accidente, cirugía y/o fallecimiento. También cubre responsabilidad en caso de que el animal ocasione un daño a un tercero.\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro Food Trucks\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Una de las coberturas más comunes que realizan venta de comida/bebidas, en una modalidad que está en boga actualmente. Se asegura el vehículo afectado a dicha actividad, como también el contenido, mercadería, maquinaria y/o elementos utilizados para realizar la actividad, como así también el daño a un tercero que se realicen dentro del vehículo.\n\n',
                      ),
                      TextSpan(
                        text: 'Seguro de Riesgos Agropecuarios\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
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
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          'assets/images/escuela.png',
          width: double.infinity,
          height: 220,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(height: 24),
      const Text(
        "Seguros de Mercado Específico",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              height: 1.5,
            ),
            children: [
              TextSpan(
                text: 'Seguros para Colegios\n\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: '• Seguro de Continuidad o Beca Escolar\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Asegura la continuidad del alumno ante el fallecimiento o incapacidad permanente del padre responsable del pago del arancel mensual y matrícula. Cubre la escolaridad completa de los hijos hasta la finalización de sus estudios secundarios.\n\n',
              ),
              TextSpan(
                text: '• Seguros de Responsabilidad Civil para Directores y Representantes Legales\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Ampara a directores y representantes legales ante eventuales reclamos de terceros respecto a su responsabilidad por la conducción del colegio.\n\n',
              ),
              TextSpan(
                text: '• Accidentes Personales Escolares\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Esta cobertura brinda respaldo ante accidentes sufridos por los alumnos dentro o fuera del establecimiento, incluyendo salidas pedagógicas, bajo supervisión docente. Cubre:\n- Muerte accidental.\n- Incapacidad total o parcial permanente.\n- Reintegro de gastos médicos.\n\n',
              ),
              TextSpan(
                text: 'Seguro para Embarcaciones de Placer\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Incluye daños por naufragio, incendio, colisiones, robo total o parcial (motor, casco, accesorios, bote auxiliar).\n\n',
              ),
              TextSpan(
                text: 'Seguro para Jet Ski\n\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Cobertura especializada para motos de agua y responsabilidad frente a terceros.\n\n',
              ),
              TextSpan(
                text: 'Seguro de Mascotas\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Gastos veterinarios por accidente, cirugía o fallecimiento. También cubre daños a terceros causados por el animal.\n\n',
              ),
              TextSpan(
                text: 'Seguro Food Trucks\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Cubre el vehículo, contenido, maquinaria, mercadería y responsabilidad frente a terceros durante la actividad comercial.\n\n',
              ),
              TextSpan(
                text: 'Seguro de Riesgos Agropecuarios\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Cobertura para actividades del sector agropecuario según riesgos específicos del rubro.\n',
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 40),
    ],
  );
}

}
