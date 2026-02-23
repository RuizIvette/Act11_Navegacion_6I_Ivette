import 'package:flutter/material.dart';

// --- TERCERA PÁGINA ---
class PaginaTres extends StatelessWidget {
  const PaginaTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tercera página", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container de 200x200 morado claro
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 150, 64, 64),
                    blurRadius: 10,
                    spreadRadius: 5,
                  )
                ],
              ),
              child: const Center(
                child: Text(
                  "Final",
                  style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Volver a la primera página quitando todas las anteriores
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              },
              child: const Text("Volver al Inicio"),
            ),
          ],
        ),
      ),
    );
  }
}