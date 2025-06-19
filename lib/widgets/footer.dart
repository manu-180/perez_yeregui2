import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:perezyeregui/utils/launch_instagram_stub.dart';
import 'package:url_launcher/url_launcher.dart';

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
      color: const Color(0xFF5C5664),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          screenWidth > 1000
              ? _buildDesktopLayout(context)
              : _buildMobileLayout(context),
          const SizedBox(height: 20),
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

  void openInstagram() {
    const url =
        'https://www.instagram.com/segurosperezyeregui/?utm_source=qr&igsh=MTNiamFxYnoyaWQxaA%3D%3D#';
    openInstagramWeb(url);
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Row(
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
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: services.map((service) {
            int index = services.indexOf(service);
            return InkWell(
              onTap: () {
                switch (service) {
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
              },
              onHover: (isHovered) {
                setState(() {
                  hoverIndex = isHovered ? index : -1;
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: 2,
                      width: hoverIndex == index
                          ? _textWidth(service, context)
                          : 0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildContactInfo(FontAwesomeIcons.whatsapp, "116927-0009",
                () => launchUrl(Uri.parse("https://wa.me/541169270009"))),
            _buildContactInfo(Icons.email, "seguros@perezyeregui.com.ar",
                () => launchUrl(Uri.parse("mailto:seguros@perezyeregui.com.ar"))),
            _buildContactInfo(
                Icons.location_on,
                "Echeverría 1208, Pacheco, BsAs",
                () => launchUrl(Uri.parse(
                    "https://www.google.com/maps/search/?api=1&query=Echeverría+1208,+Pacheco,+BsAs"))),
            _buildHorarioInfo(),
          ],
        ),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => context.go("/"),
          child: Image.asset(
            'assets/icon/logo-perez-yeregui.png',
            height: 120,
          ),
        ),
        const SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildContactInfo(FontAwesomeIcons.whatsapp, "1169270009",
                () => launchUrl(Uri.parse("https://wa.me/541169270009"))),
            _buildContactInfo(Icons.email, "seguros@perezyeregui.com.ar",
                () => launchUrl(Uri.parse("mailto:seguros@perezyeregui.com.ar"))),
            _buildContactInfo(
                Icons.location_on,
                "Echeverría 12108, Pacheco, BsAs",
                () => launchUrl(Uri.parse(
                    "https://www.google.com/maps/search/?api=1&query=Echeverría+12108,+Pacheco,+BsAs"))),
            _buildHorarioInfo(),
          ],
        ),
      ],
    );
  }

  Widget _buildContactInfo(IconData icon, String text, VoidCallback? onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.white, size: 16),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHorarioInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Icon(Icons.access_time, color: Colors.white, size: 16),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lunes a Viernes, 9:00 AM - 6:00 PM",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              Text(
                "Sábado, de 9:00 a 13:00",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          )
        ],
      ),
    );
  }

  double _textWidth(String text, BuildContext context) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();
    return textPainter.width;
  }
}
