import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:perezyeregui/widgets/button_seguros.dart';
import 'package:perezyeregui/widgets/seguros_animated.dart';

class SegurosLoyout extends StatelessWidget {
  const SegurosLoyout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return size.width > 1000
        ? Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ExpandableBox(
                    icon: FontAwesomeIcons.car,
                    title: "AUTO",
                    subtitle: 'Disfrutá tu auto',
                    content:
                        ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                  ),
                  ExpandableBox(
                    icon: FontAwesomeIcons.home,
                    title: "HOGAR",
                    subtitle: 'Disfrutá tu casa',
                    content:
                        ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                  ),
                  ExpandableBox(
                    icon: FontAwesomeIcons.bicycle,
                    title: "MOVILIDAD",
                    subtitle: 'Movete tranquilo',
                    content:
                        ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                  ),
                  ExpandableBox(
                    icon: FontAwesomeIcons.motorcycle,
                    title: "MOTO",
                    subtitle: 'Disfrutá el camino',
                    content:
                        ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                  ),
                  ExpandableBox(
                    icon: FontAwesomeIcons.heart,
                    title: "VIDA",
                    subtitle: 'Viví en paz',
                    content: Column(
                      children: [
                        ButtonSeguros(
                            text: "Individual y Colectivo", rute: "/contacto"),
                        ButtonSeguros(text: "Salud", rute: "/contacto"),
                        ButtonSeguros(
                            text: "Seguro de Viajero", rute: "/contacto"),
                        ButtonSeguros(
                            text: "Seguro de Sepelio", rute: "/contacto"),
                        ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ExpandableBox(
                    icon: FontAwesomeIcons.briefcase,
                    title: "VIDA LABORAL",
                    subtitle: 'Trabajá seguro',
                    content:
                        ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                  ),
                  ExpandableBox(
                    icon: FontAwesomeIcons.store,
                    title: "PYME",
                    subtitle: 'Tu negocio seguro',
                    content:
                        ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                  ),
                  ExpandableBox(
                    icon: FontAwesomeIcons.userShield,
                    title: "RESPONSABILIDAD CIVIL",
                    subtitle: 'Viví sin preocuparte',
                    content:
                        ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                  ),
                  ExpandableBox(
                    icon: FontAwesomeIcons.chartLine,
                    title: "MERCADOS ESPECIALES",
                    subtitle: 'Protegé tu inversión',
                    content:
                        ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                  ),
                  ExpandableBox(
                    icon: FontAwesomeIcons.ellipsis,
                    title: "OTROS",
                    subtitle: 'Más opciones para vos',
                    content:
                        ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                  ),
                ],
              ),
            ],
          )
        : Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ExpandableBox(
                    icon: FontAwesomeIcons.car,
                    title: "AUTO",
                    subtitle: 'Disfrutá tu auto',
                    content:
                        ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                  ),
                  ExpandableBox(
                    icon: FontAwesomeIcons.home,
                    title: "HOGAR",
                    subtitle: 'Disfrutá tu casa',
                    content:
                        ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                  ),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ExpandableBox(
                      icon: FontAwesomeIcons.bicycle,
                      title: "MOVILIDAD",
                      subtitle: 'Movete tranquilo',
                      content:
                          ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                    ),
                    ExpandableBox(
                      icon: FontAwesomeIcons.motorcycle,
                      title: "MOTO",
                      subtitle: 'Disfrutá el camino',
                      content:
                          ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                    ),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ExpandableBox(
                        icon: FontAwesomeIcons.heart,
                        title: "VIDA",
                        subtitle: 'Viví en paz',
                        content: Column(
                          children: [
                            ButtonSeguros(
                                text: "Individual y Colectivo",
                                rute: "/contacto"),
                            ButtonSeguros(text: "Salud", rute: "/contacto"),
                            ButtonSeguros(
                                text: "Seguro de Viajero", rute: "/contacto"),
                            ButtonSeguros(
                                text: "Seguro de Sepelio", rute: "/contacto"),
                            ButtonSeguros(
                                text: "Conocé más", rute: "/contacto"),
                          ],
                        )),
                    ExpandableBox(
                      icon: FontAwesomeIcons.briefcase,
                      title: "VIDA LABORAL",
                      subtitle: 'Trabajá seguro',
                      content:
                          ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                    ),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ExpandableBox(
                      icon: FontAwesomeIcons.store,
                      title: "PYME",
                      subtitle: 'Tu negocio seguro',
                      content:
                          ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                    ),
                    ExpandableBox(
                      icon: FontAwesomeIcons.userShield,
                      title: "RESPONSABILIDAD CIVIL",
                      subtitle: 'Viví sin preocuparte',
                      content:
                          ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                    ),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ExpandableBox(
                      icon: FontAwesomeIcons.chartLine,
                      title: "MERCADOS ESPECIALES",
                      subtitle: 'Protegé tu inversión',
                      content:
                          ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                    ),
                    ExpandableBox(
                      icon: FontAwesomeIcons.ellipsis,
                      title: "OTROS",
                      subtitle: 'Más opciones para vos',
                      content:
                          ButtonSeguros(text: "Conocé más", rute: "/contacto"),
                    ),
                  ]),
            ],
          );
  }
}
