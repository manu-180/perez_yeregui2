import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  FooterState createState() => FooterState();
}

class FooterState extends State<Footer> {
  final List<String> services = [
    "Inicio",
    "Quienes Somos",
    "Servicios",
    "Contacto"
  ];

  int hoverIndex = -1;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Color(0xFF5C5664),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          // Diseño responsivo para las columnas
          screenWidth > 1000
              ? _buildDesktopLayout(context) // Diseño para pantallas grandes
              : _buildMobileLayout(context), // Diseño para pantallas pequeñas

          // Derechos de Autor
          SizedBox(height: 20),
          Text(
            "© 2022 PEREZ YEREGUI & ASOCIADOS. Todos los derechos reservados.",
            style: TextStyle(
              color: Colors.grey[300],
              fontSize: screenWidth > 1000 ? 12 : 10,
            ),
          ),
        ],
      ),
    );
  }

  // Diseño para pantallas grandes (> 1000 px)
  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Primera Columna (Logo y Eslogan)
        Container(
          color: Color(0xFF5C5664), // Fondo azul oscuro
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Texto "PEREZ YEREGUI"
              Text(
                "PEREZ YEREGUI",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily:
                      'Roboto', // Puedes cambiar la fuente según tus necesidades
                ),
              ),
              // Texto "& ASOCIADOS"
              Text(
                "& ASOCIADOS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 10),
              // Texto "SEGUROS-REASEGUROS"
              Text(
                "SEGUROS - REASEGUROS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ),

        // Segunda Columna (Listado de Servicios)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: services.map((service) {
            int index = services.indexOf(service);
            return InkWell(
              onTap: () {
                // Aquí puedes agregar la lógica para cada opción
                switch (service) {
                  case "Inicio":
                    context.go("/");
                  case "Quienes Somos":
                    context.go("/quienes-somos");
                  case "Servicios":
                    context.go("/servicios");
                  case "Contacto":
                    context.go("/contacto");
                }
              },
              onHover: (isHovered) {
                setState(() {
                  hoverIndex = isHovered ? index : -1;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      width: hoverIndex == index ? 100 : 0,
                      height: 2,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),

        // Tercera Columna (Información de Contacto)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildContactInfo(Icons.phone, "+54 11 1234-5678"),
            _buildContactInfo(Icons.email, "seguros@perezyeregui.com.ar"),
            _buildContactInfo(
                Icons.location_on, "Av. Corrientes 1234, CABA, Argentina"),
            _buildContactInfo(
                Icons.access_time, "Lunes a Viernes, 9:00 AM - 6:00 PM"),
          ],
        ),
      ],
    );
  }

  // Diseño para pantallas pequeñas (<= 1000 px)
  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Primera Columna (Logo y Eslogan)
        Container(
          color: Color(0xFF5C5664), // Fondo azul oscuro
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Texto "PEREZ YEREGUI"
              Text(
                "PEREZ YEREGUI",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily:
                      'Roboto', // Puedes cambiar la fuente según tus necesidades
                ),
              ),
              // Texto "& ASOCIADOS"
              Text(
                "& ASOCIADOS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 10),
              // Texto "SEGUROS-REASEGUROS"
              Text(
                "SEGUROS - REASEGUROS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ),

        // Segunda Columna (Listado de Servicios)

        // Tercera Columna (Información de Contacto)
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildContactInfo(Icons.phone, "+54 11 1234-5678"),
            _buildContactInfo(Icons.email, "seguros@perezyeregui.com.ar"),
            _buildContactInfo(
                Icons.location_on, "Av. Corrientes 1234, CABA, Argentina"),
            _buildContactInfo(
                Icons.access_time, "Lunes a Viernes, 9:00 AM - 6:00 PM"),
          ],
        ),
      ],
    );
  }

  Widget _buildContactInfo(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 16),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
