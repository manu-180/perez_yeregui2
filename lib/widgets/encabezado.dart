import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:async';


class Encabezado extends StatefulWidget {
  const Encabezado({super.key});

  @override
  EncabezadoState createState() => EncabezadoState();
}

class EncabezadoState extends State<Encabezado>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), // Duración de la animación
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 0), // Comienza fuera de la pantalla (derecha)
      end: Offset(0, 0), // Termina en su posición normal
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _fadeAnimation = Tween<double>(
      begin: 0.0, // Comienza invisible
      end: 1.0, // Termina completamente visible
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    // Iniciar la animación cuando se monta el widget
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity, // Ocupa toda la pantalla
      height: size.width > 1000
          ? 500
          : 700, // Ajusta la altura según el ancho de la pantalla
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF5C5664), // Azul oscuro
            Color(0xFF5C5664), // Azul más claro
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
        child: size.width > 1000
            ? _buildDesktopLayout(size) // Diseño para pantallas grandes
            : _buildMobileLayout(size), // Diseño para pantallas pequeñas
      ),
    );
  }

  // Diseño para pantallas grandes (> 1000 px)
  Widget _buildDesktopLayout(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Texto con animación de entrada
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.only(left: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SlideTransition(
                  position: _slideAnimation,
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          "Protegé lo que más valorás.",
                          textStyle: GoogleFonts.montserrat(
                            fontSize: size.width > 1000
                                ? size.width * 0.03
                                : size.width * 0.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          speed: Duration(milliseconds: 100),
                        ),
                      ],
                      totalRepeatCount: 1,
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Elegí estar seguro.",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    MouseRegion(
                      onEnter: (_) => setState(() => _isHovered = true),
                      onExit: (_) => setState(() => _isHovered = false),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          color: _isHovered ? Color(0xFFD1AD7C) : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: SizedBox(
                          width: size.width * 0.15,
                          height: size.width * 0.035,
                          child: ElevatedButton(
                            onPressed: () => context.go('/servicios'),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            child: Text(
                              "VER SEGUROS",
                              style: GoogleFonts.montserrat(
                                fontSize: size.width * 0.012,
                                fontWeight: FontWeight.bold,
                                color: _isHovered ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    SizedBox(
                      width: size.width * 0.15,
                      height: size.width * 0.035,
                      child: ElevatedButton(
                        onPressed: () => context.go('/contacto'),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          backgroundColor: Color(0xFFD1AD7C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          "CONTACTANOS",
                          style: GoogleFonts.montserrat(
                            fontSize: size.width * 0.012,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
const SeguroCelularCard(),


              ],
            ),
          ),
        ),
        // Imagen circular a la derecha
        Expanded(
          flex: 5,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: size.width * 0.007),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/familia.png',
                  width: size.width * 0.35,
                  height: size.width * 0.35,
                  //  width: 500,
                  // height: 500,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Diseño para pantallas pequeñas (<= 1000 px)
  Widget _buildMobileLayout(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Texto con animación de entrada
       
        SlideTransition(
          position: _slideAnimation,
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  "Protegé lo que más valorás.",
                  textStyle: GoogleFonts.montserrat(
                    fontSize:size.width *
                        0.06, // Tamaño de fuente más grande en móvil
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  speed: Duration(milliseconds: 100),
                ),
              ],
              totalRepeatCount: 1,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Elegí estar seguro.",
          style: GoogleFonts.montserrat(
            fontSize: size.width> 1000? size.width * 0.025:size.width * 0.05 ,
            color: Colors.white70,
          ),
        ),
        SizedBox(height: 20),

        MouseRegion(
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: _isHovered ? Color(0xFFD1AD7C) : Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: ElevatedButton(
              onPressed: () => context.go('/servicios'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              child: Text(
                "VER SEGUROS",
                style: GoogleFonts.montserrat(
                  fontSize: size.width> 1000? size.width * 0.015:size.width * 0.03,
                  fontWeight: FontWeight.bold,
                  color: _isHovered ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => context.go('/contacto'),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            backgroundColor: Color(0xFFD1AD7C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            "CONTACTANOS",
            style: GoogleFonts.montserrat(
              fontSize: size.width> 1000? size.width * 0.015:size.width * 0.03,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 30),
const SeguroCelularCard(),



        SizedBox(height: 40), // Espacio adicional antes de la imagen
        // Imagen circular al final
        ClipOval(
          child: Image.asset(
            'assets/images/familia.png',
            // width: size.width> 1000? size.width * 0.25:size.width * 0.6, // Tamaño más grande en móvil
            // height: size.width> 1000? size.width * 0.25:size.width * 0.6,
            width: 250, // Tamaño más grande en móvil
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

class SeguroCelularCard extends StatefulWidget {
  const SeguroCelularCard({super.key});

  @override
  State<SeguroCelularCard> createState() => _SeguroCelularCardState();
}

class _SeguroCelularCardState extends State<SeguroCelularCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacity;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);

    _opacity = Tween<double>(begin: 1.0, end: 0.4).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth > 1000;

    return FadeTransition(
       opacity: _isHovered ? const AlwaysStoppedAnimation(1.0) : _opacity,
      child: GestureDetector(
        onTap: () => context.go('/seguro-celulares'),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            transform: (_isHovered ? (Matrix4.identity()..scale(1.03)) : Matrix4.identity()),
            curve: Curves.easeOut,
            width: isWideScreen ? screenWidth * 0.3 : screenWidth * 0.6,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: _isHovered ? Colors.black26 : Colors.black12,
                  blurRadius: _isHovered ? 16 : 8,
                  offset: Offset(0, 4),
                )
              ],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              color: _isHovered ? const Color(0xFFc79d60) : const Color(0xFFD1AD7C),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.campaign,
                      size: 28,
                      color: _isHovered ? const Color.fromARGB(255, 184, 184, 40) : Colors.white,
                    ),
                    const SizedBox(width: 12),
                    const Flexible(
                      child: Text(
                        '¡Nuevo! Seguro para celulares y notebooks',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
