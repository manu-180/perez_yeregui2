import 'package:go_router/go_router.dart';
import 'package:perezyeregui/screens/contactanos_screen.dart';
import 'package:perezyeregui/screens/quienes_somos_screen.dart';
import 'package:perezyeregui/screens/seguro_automotor_screen.dart';
import 'package:perezyeregui/screens/seguro_hogar_screen.dart';
import 'package:perezyeregui/screens/seguros_mercados_especiales.dart';
import 'package:perezyeregui/screens/seguros_moto_screen.dart';
import 'package:perezyeregui/screens/seguros_movilidad_screen.dart';
import 'package:perezyeregui/screens/seguros_otros_screen.dart';
import 'package:perezyeregui/screens/seguros_pyme_screen.dart';
import 'package:perezyeregui/screens/seguros_responsabilidad_civil_screen.dart';
import 'package:perezyeregui/screens/seguros_vida_laboral_screen.dart';
import 'package:perezyeregui/screens/seguros_vida_screen.dart';
import 'package:perezyeregui/screens/servicios_screen.dart';

import '../../screens/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/quienes-somos",
      builder: (context, state) => const QuienesSomosScreen(),
    ),
    GoRoute(
      path: "/servicios",
      builder: (context, state) => const ServiciosScreen(),
    ),
    GoRoute(
      path: "/contacto",
      builder: (context, state) => const ContactanosScreen(),
    ),
    GoRoute(
      path: "/seguro-automotor",
      builder: (context, state) => const SeguroAutomotorScreen(),
    ),
    GoRoute(
      path: "/seguro-hogar",
      builder: (context, state) => const SeguroHogarScreen(),
    ),
    GoRoute(
      path: "/seguro-moto",
      builder: (context, state) => const SegurosMotoScreen(),
    ),
    GoRoute(
      path: "/seguro-movilidad",
      builder: (context, state) => const SegurosMovilidadScreen(),
    ),
    GoRoute(
      path: "/seguro-vida",
      builder: (context, state) => const SegurosVidaScreen(),
    ),
    GoRoute(
      path: "/seguro-vida-laboral",
      builder: (context, state) => const SegurosVidaLaboralScreen(),
    ),
    GoRoute(
      path: "/seguro-pyme",
      builder: (context, state) => const SegurosPymeScreen(),
    ),
    GoRoute(
      path: "/seguro-responsabilidad-civil",
      builder: (context, state) => const SegurosResponsabilidadCivilScreen(),
    ),
    GoRoute(
      path: "/seguro-mercados-especiales",
      builder: (context, state) => const SegurosMercadosEspecialesScreen(),
    ),
    GoRoute(
      path: "/seguro-otros",
      builder: (context, state) => const SegurosOtrosScreen(),
    ),
  ],
);
