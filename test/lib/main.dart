import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Écran principal
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini App Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(), // Premier écran
    );
  }
}

// Premier écran
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Écran d\'accueil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenue !',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigation vers le deuxième écran
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text('Aller au deuxième écran'),
            ),
          ],
        ),
      ),
    );
  }
}

// Deuxième écran
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int compteur = 0;

  void incrementer() {
    setState(() {
      compteur++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Deuxième écran')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Vous avez cliqué : $compteur fois',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: incrementer,
              child: Text('Clique-moi !'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Retour à l'écran précédent
                Navigator.pop(context);
              },
              child: Text('Retour à l\'accueil'),
            ),
          ],
        ),
      ),
    );
  }
}
