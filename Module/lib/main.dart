import 'package:flutter/material.dart';
import 'package:practica5modulo/models/food.dart';
import 'package:practica5modulo/widget/food_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catalogue',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CatalogueScreen(),
    );
  }
}

class CatalogueScreen extends StatefulWidget {
  const CatalogueScreen({super.key});

  @override
  State<CatalogueScreen> createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Food> cupcakeFoods = foods.where((food) => food.category == 'Cupcake').toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Our Catalogue', // Título de la barra de aplicación
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 14,), // Espaciado superior
                GridView.builder(
                  // GridView para mostrar los alimentos en forma de cuadrícula
                  shrinkWrap: true, // Ajusta el tamaño del GridView al contenido
                  physics: const NeverScrollableScrollPhysics(), // Deshabilita el desplazamiento dentro del GridView
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    // Configuración de la cuadrícula
                    crossAxisCount: 2, // Número de elementos en cada fila de la cuadrícula
                    crossAxisSpacing: 20, // Espacio horizontal entre elementos de la cuadrícula
                    mainAxisSpacing: 20, // Espacio vertical entre elementos de la cuadrícula
                  ),
                  itemBuilder: (context, index) => Platillo( // Constructor de cada elemento de la cuadrícula
                    food: cupcakeFoods[index], // Pasa cada alimento vegetariano al widget Platillo
                  ),
                  itemCount: cupcakeFoods.length, // Número total de elementos en la cuadrícula
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
