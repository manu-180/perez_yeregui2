import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SegurosWidget extends StatefulWidget {
  const SegurosWidget({super.key});

  @override
  SegurosWidgetState createState() => SegurosWidgetState();
}

class SegurosWidgetState extends State<SegurosWidget> {
  final List<Map<String, dynamic>> seguros = [
    {
      'icon': FontAwesomeIcons.car,
      'title': 'AUTO',
      'subtitle': 'Disfrutá tu auto',
      'ruta': '/seguro-automotor'
    },
    {
      'icon': FontAwesomeIcons.home,
      'title': 'HOGAR',
      'subtitle': 'Disfrutá tu casa',
      'ruta': '/seguro-hogar'
    },
    {
      'icon': FontAwesomeIcons.bicycle,
      'title': 'MOVILIDAD',
      'subtitle': 'Movete tranquilo',
      'ruta': '/seguro-movilidad'
    },
    {
      'icon': FontAwesomeIcons.motorcycle,
      'title': 'MOTO',
      'subtitle': 'Disfrutá el camino',
      'ruta': '/seguro-moto'
    },
    {
      'icon': FontAwesomeIcons.heart,
      'title': 'VIDA',
      'subtitle': 'Viví en paz',
      'ruta': '/seguro-vida'
    },
    {
      'icon': FontAwesomeIcons.briefcase,
      'title': 'VIDA LABORAL',
      'subtitle': 'Trabajá seguro',
      'ruta': '/seguro-vida-laboral'
    },
    {
      'icon': FontAwesomeIcons.store,
      'title': 'PYME',
      'subtitle': 'Tu negocio seguro',
      'ruta': '/seguro-pyme'
    },
    {
      'icon': FontAwesomeIcons.userShield,
      'title': 'RESPONSABILIDAD CIVIL',
      'subtitle': 'Viví sin preocuparte',
      'ruta': '/seguro-responsabilidad-civil'
    },
    {
      'icon': FontAwesomeIcons.chartLine,
      'title': 'MERCADOS ESPECIALES',
      'subtitle': 'Protegé tu inversión',
      'ruta': '/seguro-mercados-especiales'
    },
    {
      'icon': FontAwesomeIcons.toolbox,
      'title': 'SEGURO TECNICO',
      'subtitle': 'Protegé tus dispositivos',
      'ruta': '/seguro-tecnico'
    },
     {
      'icon': FontAwesomeIcons.mobileAlt,
      'title': 'CELULAR',
      'subtitle': 'Protección completa',
      'ruta': '/seguro-celulares'
    },
     {
      'icon': FontAwesomeIcons.laptop,
      'title': 'NOTEBOOK',
      'subtitle': 'Cobertura total',
      'ruta': '/seguro-notebooks'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 600;

    return Container(
  color: Colors.white,
  width: double.infinity,
  padding: EdgeInsets.symmetric(horizontal: isDesktop?   screenWidth * 0.1 : screenWidth * 0.05, vertical: 60),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: screenWidth * 0.02),
      Text(
        "Conocé nuestros seguros",
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: screenWidth > 800 ? screenWidth * 0.03 : screenWidth * 0.068,
          fontWeight: FontWeight.bold,
          color: Color(0xFF5C5664),
        ),
      ),
      Divider(),
      SizedBox(height: screenWidth * 0.02),
      LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = screenWidth > 800 ? 4 : 2;

          return GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: screenWidth * 0.03,
              mainAxisSpacing: screenWidth * 0.03,
              childAspectRatio: 1,
            ),
            itemCount: seguros.length,
            itemBuilder: (context, index) {
              final seguro = seguros[index];
              return SeguroItem(
                icon: seguro['icon'] as IconData,
                title: seguro['title'] as String,
                subtitle: seguro['subtitle'] as String,
                ruta: seguro['ruta'],
              );
            },
          );
        },
      ),
    ],
  ),
);

  }
}

class SeguroItem extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String ruta;

  const SeguroItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.ruta,
    super.key,
  });

  @override
  _SeguroItemState createState() => _SeguroItemState();
}

class _SeguroItemState extends State<SeguroItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 800;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: SizedBox(
        height: size.width * 0.25, // Aumentado para mayor altura
        child: GestureDetector(
          child: AnimatedScale(
  scale: _isHovered ? 1.1 : 1.0,
  duration: Duration(milliseconds: 200),
  curve: Curves.easeOut,
  child: Card(
    elevation: _isHovered ? 5 : 2,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          widget.icon,
          size: isDesktop ? size.width * 0.03 : size.width * 0.09,
          color: _isHovered ? Color(0xFFD1AD7C) : Color(0xFF5C5664),
        ),
        SizedBox(height: isDesktop ? size.width * 0.015 : size.width * 0.03),
        Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isDesktop ? size.width * 0.012 : size.width * 0.04,
            fontWeight: FontWeight.bold,
            color: _isHovered ? Color(0xFFD1AD7C) : Color(0xFF5C5664),
          ),
        ),
        SizedBox(height: isDesktop ? size.width * 0.007 : size.width * 0.02),
        Text(
          widget.subtitle,
          style: TextStyle(
            fontSize: isDesktop ? size.width * 0.011 : size.width * 0.03,
            color: Color(0xFF5C5664),
          ),
        ),
        SizedBox(height: isDesktop ? size.width * 0.007 : size.width * 0.025),
        isDesktop ?
        SizedBox(
          width: isDesktop ? size.width * 0.1 : size.width * 0.25,
          height: isDesktop ? size.width * 0.02 : size.width * 0.06,
          child: OutlinedButton(
            onPressed: () => context.push(widget.ruta),
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: _isHovered ? Color(0xFFD1AD7C) : Color(0xFF5C5664),
              ),
              backgroundColor:
                  _isHovered ? Color(0xFFD1AD7C) : Colors.transparent,
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              alignment: Alignment.center,
            ),
            child: Text(
              "Conocé más",
              style: TextStyle(
                color: _isHovered ? Colors.white : Color(0xFF5C5664),
                fontSize:
                    isDesktop ? size.width * 0.008 : size.width * 0.025,
              ),
            ),
          ),
        ):
        SizedBox()
      ],
    ),
  ),
)
,
          onTap: () => context.push(widget.ruta),
        ),
      ),
    );
  }
}
