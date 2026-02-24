import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pantalla/sesion.dart';

PreferredSizeWidget buildCustomAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.black),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Olivos Verdes",
          style: GoogleFonts.pacifico(
            color: const Color(0xFF5D9B5D),
            fontSize: 24,
          ),
        ),
        Text(
          "Emma Ortiz 6j",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
          ),
        ),
      ],
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.person_outline, color: Color(0xFF5A2A27), size: 28),
        onPressed: () {
          // Navega a la pantalla de Inicio de Sesión
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        },
      ),
      IconButton(
        icon: const Icon(Icons.menu, color: Color(0xFF5A2A27), size: 28),
        onPressed: () {
          // Acción del menú
        },
      ),
      const SizedBox(width: 8),
    ],
  );
}
