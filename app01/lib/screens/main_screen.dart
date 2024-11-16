import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fundo do app
          Positioned.fill(
            child: Image.asset(
              'assets/background.png',
              fit: BoxFit.cover,
            ),
          ),
          // Botões laterais de opções (configurações, compartilhar, avaliações, loja)
          Positioned(
            left: 10,
            top: 50,
            child: Column(
              children: [
                // Botão de "Loja" (Remover Publicidade)
                IconButton(
                  icon: Icon(Icons.shopping_cart, color: Colors.pinkAccent),
                  iconSize: 40,
                  tooltip: 'Remover Publicidade',
                  onPressed: () {
                    Navigator.pushNamed(context, '/remove_ads');
                  },
                ),
                SizedBox(height: 20),
                // Botão de "Compartilhar"
                IconButton(
                  icon: Icon(Icons.share, color: Colors.blueAccent),
                  iconSize: 40,
                  tooltip: 'Compartilhar',
                  onPressed: () {
                    Navigator.pushNamed(context, '/options');
                  },
                ),
                SizedBox(height: 20),
                // Botão de "Avaliações"
                IconButton(
                  icon: Icon(Icons.star, color: Colors.amber),
                  iconSize: 40,
                  tooltip: 'Avaliações',
                  onPressed: () {
                    Navigator.pushNamed(context, '/options');
                  },
                ),
                SizedBox(height: 20),
                // Botão de "Configurações"
                IconButton(
                  icon: Icon(Icons.settings, color: Colors.green),
                  iconSize: 40,
                  tooltip: 'Configurações',
                  onPressed: () {
                    Navigator.pushNamed(context, '/options');
                  },
                ),
              ],
            ),
          ),
          // Botões de anúncio no topo
          Positioned(
            top: 10,
            left: MediaQuery.of(context).size.width / 2 - 100,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/options');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/ad1.png'),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/options');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/ad2.png'),
                    radius: 30,
                  ),
                ),
              ],
            ),
          ),
          // Título e botão de iniciar no centro
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Coloridamente",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Aqui você pode adicionar a navegação para a tela de colorir
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    radius: 40,
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Lápis de cores no rodapé
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(backgroundColor: Colors.red, radius: 20),
                CircleAvatar(backgroundColor: Colors.orange, radius: 20),
                CircleAvatar(backgroundColor: Colors.yellow, radius: 20),
                CircleAvatar(backgroundColor: Colors.green, radius: 20),
                CircleAvatar(backgroundColor: Colors.blue, radius: 20),
                CircleAvatar(backgroundColor: Colors.purple, radius: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
