import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/data.dart';

ThemeData themeData = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    fontFamily: GoogleFonts.lato().fontFamily,
    primaryColor: Colors.teal,
    colorScheme: const ColorScheme.dark(
        primary: Colors.teal,
        secondary: Colors.pink,
        surface: Colors.black12,
        background: Colors.grey,
        error: Colors.red,
        onPrimary: Colors.black,
        onSecondary: Colors.black,
        onSurface: Colors.teal,
        onBackground: Colors.pink,
        onError: Colors.red,
        brightness: Brightness.dark,
        inversePrimary: Colors.black,
        inverseSurface: Colors.black),
    iconTheme: const IconThemeData(color: Colors.teal),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 42,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        shadows: [
          Shadow(
            color: Colors.black,
            blurRadius: 10,
            offset: Offset(10, 10),
          ),
        ],
      ),
      headline2: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headline3: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headline4: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
      ),
      headline5: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      headline6: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      subtitle1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
    ));

Future<void> launchGitHub() async {
  final Uri url = Uri.parse("https://$github");
  await launchUrl(url);
}

Future<void> launchWebsite() async {
  final Uri url = Uri.parse("https://$website");
  await launchUrl(url);
}

Future<void> launchLinkedIn() async {
  final Uri url = Uri.parse("https://$linkedIn");
  await launchUrl(url);
}

Future<void> launchLocation() async {
  final Uri url = Uri.parse("https://$locationUrl");
  await launchUrl(url);
}

Future<void> launchResume() async {
  final Uri url = Uri.parse("https://$resumeLink");
  await launchUrl(url);
}

Future<void> launchEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: contactEmail,
  );
  await launchUrl(emailLaunchUri);
}

Future<void> launchPhone() async {
  final Uri phoneLaunchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  await launchUrl(phoneLaunchUri);
}
