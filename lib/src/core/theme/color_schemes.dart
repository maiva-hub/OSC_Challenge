import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
 
  primary: Colors.blue,
  onPrimary: Color(0xFFFFFFFF),//LE BACKGROUND DE PAGE
  primaryContainer: Color(0xFFEADDFF),
  onPrimaryContainer: Color(0xFF21005D),
  secondary: Color(0xFF625B71),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFE8DEF8),
  onSecondaryContainer: Color(0xFF1D192B),
  tertiary: Color(0xFF7D5260),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFD8E4),
  onTertiaryContainer: Color(0xFF31111D),
  error: Color(0xFFB3261E),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFF9DEDC),
  onErrorContainer: Color(0xFF410E0B),
  outline: Color(0xFF79747E),
  surface: Color(0xFFFFFFFF),// Pour le symbole de recherche 
  onSurface: Color(0XFF3897F0),//pour les TextButtons
  onSurfaceVariant: Color(0xFFFF4040),//Pour le boutton deconnexion
  inverseSurface: Color.fromARGB(255, 0, 0, 0),
  onInverseSurface: Color(0xFFF4EFF4),
  inversePrimary: Color(0xFFD0BCFF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF4110CE),//pour a deuxieme partie du logo
  outlineVariant: Color(0xFFCAC4D0),
  scrim: Color(0xFFF9F9F9),//Pour les textes et les labels et une partie du logo
 

);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFD0BCFF),
  onPrimary: Color(0xFF000000),
  primaryContainer: Color(0xFF4F378B),
  onPrimaryContainer: Color(0xFFEADDFF),
  secondary: Color(0xFFCCC2DC),
  onSecondary: Color(0xFF332D41),
  secondaryContainer: Color(0xFF4A4458),
  onSecondaryContainer: Color(0xFFE8DEF8),
  tertiary: Color(0xFFEFB8C8),
  onTertiary: Color(0xFF492532),
  tertiaryContainer: Color(0xFF633B48),
  onTertiaryContainer: Color(0xFFFFD8E4),
  error: Color(0xFFF2B8B5),
  onError: Color(0xFF601410),
  errorContainer: Color(0xFF8C1D18),
  onErrorContainer: Color(0xFFF9DEDC),
  outline: Color(0xFF938F99),
  surface: Color(0xFF000000),// Pour le symbole de recherche
  onSurface: Color(0XFF1E5CB3),//pour les TextButtons
  onSurfaceVariant: Color(0xFFB03030),//Pour le boutton deconnexion
  inverseSurface: Color(0xFFE6E1E5),
  onInverseSurface: Color.fromARGB(255, 33, 33, 34),
  inversePrimary: Color(0xFF6750A4),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF4110CE),//pour a deuxieme partie du logo
  outlineVariant: Color(0xFF49454F),
  scrim: Color(0xFFF9F9F9),//Pour les textes et les labels et une partie du logo

);
