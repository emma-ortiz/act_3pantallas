import 'package:flutter/material.dart';
import 'package:myapp/widgets/custom_app_bar.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Text(
                "MENÚ VIRTUAL",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xFF5D9B5D),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 0.75, // Ajuste para que quepan textos y botones
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                children: [
                  _buildProductCard(
                    name: "Mandarina",
                    price: "\$80.00 kg",
                    imageUrl:
                        "https://raw.githubusercontent.com/emma-ortiz/imagenes-flutter/refs/heads/main/MANDARINA.jpg",
                    showDot: true,
                  ),
                  _buildProductCard(
                    name: "Coco",
                    price: "\$50.00 PZA",
                    imageUrl:
                        "https://raw.githubusercontent.com/emma-ortiz/imagenes-flutter/refs/heads/main/coco.jpg",
                    showDot: true,
                  ),
                  _buildProductCard(
                    name: "Calabaza",
                    price: "\$80.00 kg",
                    imageUrl:
                        "https://raw.githubusercontent.com/emma-ortiz/imagenes-flutter/refs/heads/main/calabazaa.jpg",
                    showDot: true,
                  ),
                  _buildProductCard(
                    name: "Cereza",
                    price: "\$340.00 kg",
                    imageUrl:
                        "https://images.unsplash.com/photo-1528821128474-27f963b062bf?auto=format&fit=crop&w=200&q=80",
                    showDot: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget interno para construir cada celda de fruta
  Widget _buildProductCard({
    required String name,
    required String price,
    required String imageUrl,
    required bool showDot,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(50), // Hace la imagen redonda (opcional para un buen look)
              ),
            ),
            if (showDot)
              Container(
                margin: const EdgeInsets.only(top: 5, right: 5),
                width: 15,
                height: 15,
                decoration: const BoxDecoration(
                  color: Color(0xFFF9429E), // Puntito rosa
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          price,
          style: const TextStyle(
            color: Color(0xFF5D9B5D),
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF8DE085), // Botón verde claro
            foregroundColor: Colors.black87,
            elevation: 0,
            minimumSize: const Size(100, 30),
            padding: const EdgeInsets.symmetric(horizontal: 10),
          ),
          child: const Text("Comprar", style: TextStyle(fontSize: 12)),
        ),
      ],
    );
  }
}
