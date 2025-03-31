import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart'; // para kIsWeb
import 'package:perezyeregui/utils/launch_instagram_stub.dart'
    if (dart.library.html) 'package:perezyeregui/utils/launch_instagram_web.dart';


class CustomAppBar extends StatefulWidget {
  @override


  @override
  CustomAppBarState createState() => CustomAppBarState();
}

class CustomAppBarState extends State<CustomAppBar> {
  String _hoveredItem = "";
  bool _isMenuOpen = false;

  

void openInstagram() async {
  const url = 'https://www.instagram.com/segurosperezyeregui/?utm_source=qr&igsh=MTNiamFxYnoyaWQxaA%3D%3D#';

  openInstagramWeb(url); // Esta función solo abrirá en web
}



  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool isDesktop = screenWidth > 1000;

    return Column(
  children: [
    Container(
      height: 180,
      width: double.infinity,
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 20),
      decoration: BoxDecoration(
        color: Color(0xFF5C5664),
        border: Border(
          bottom: BorderSide.none,
        ),
      ),
      child: isDesktop
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Logo + Instagram
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => context.go("/"),
                      child: Image.asset(
                        'assets/icon/logo-perez-yeregui.png',
                        height: 130,
                      ),
                    ),
                    const SizedBox(width: 12),
                    GestureDetector(
                      onTap: openInstagram,
                      child: SvgPicture.asset(
                        'assets/icon/iglogo.svg',
                        height: 50,
                      ),
                    ),
                  ],
                ),
                // Menú
                Row(children: _buildNavBarItems()),
              ],
            )
          : Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                color: Color(0xFF5C5664),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => context.go("/"),
                          child: Image.asset(
                            'assets/icon/logo-perez-yeregui.png',
                            height: 90,
                          ),
                        ),
                        const SizedBox(width: 12),
                        GestureDetector(
                          onTap: openInstagram,
                          child: SvgPicture.asset(
                            'assets/icon/iglogo.svg',
                            height: 35,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: _buildMobileMenu(),
                    ),
                  ],
                ),
              ),
            ),
    ),


  ],
);

    
  }

  /// **Menú de escritorio**
  List<Widget> _buildNavBarItems() {
    List<String> items = ["Inicio", "Quienes Somos", "Servicios", "Contacto"];
    return items.map((item) {
      return InkWell(
        onTap: () => _navigateTo(item),
        onHover: (isHovered) {
          setState(() {
            _hoveredItem = isHovered ? item : "";
          });
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                item,
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: _hoveredItem == item ? Colors.amber : Colors.white,
                ),
              ),
              SizedBox(height: 4),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                height: 2,
                width: _hoveredItem == item ? item.length * 6.5 : 0,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      );
    }).toList();
  }

  /// **Menú móvil con botón desplegable**
  Widget _buildMobileMenu() {
    return PopupMenuButton<String>(
      offset: Offset(0, 50), // Desplaza el menú 50px hacia abajo
      onOpened: () {
        setState(() => _isMenuOpen = true);
      },
      onCanceled: () {
        setState(() => _isMenuOpen = false);
      },
      onSelected: (item) => _navigateTo(item),
      icon: AnimatedRotation(
        duration: Duration(milliseconds: 300),
        turns: _isMenuOpen ? 0.5 : 0.0, // 0.5 = 180° de rotación
        child: Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 28),
      ),
      color: Color(0xFF5C5664),
      itemBuilder: (context) => [
        _buildPopupMenuItem("Inicio"),
        _buildPopupMenuItem("Quienes Somos"),
        _buildPopupMenuItem("Servicios"),
        _buildPopupMenuItem("Contacto"),
      ],
    );
  }

  /// **Elemento de menú en el desplegable**
  PopupMenuItem<String> _buildPopupMenuItem(String item) {
    return PopupMenuItem(
      value: item,
      child: Text(
        item,
        style: GoogleFonts.montserrat(fontSize: 14, color: Colors.white),
      ),
    );
  }

  /// **Navegación según la opción seleccionada**
  void _navigateTo(String item) {
    switch (item) {
      case "Inicio":
        context.go("/");
        break;
      case "Quienes Somos":
        context.go("/quienes-somos");
        break;
      case "Servicios":
        context.go("/servicios");
        break;
      case "Contacto":
        context.go("/contacto");
        break;
    }
  }
}
