import 'package:flutter/material.dart';

void main() {
  runApp(const MiniProfile());
}

class MiniProfile extends StatelessWidget {
  const MiniProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TelaProfile(),
    );
  }
}

class TelaProfile extends StatelessWidget {
  const TelaProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/plano_fundo.avif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 350,
            
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(
                    Icons.code,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Maisa Amaral",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                const Text(
                  "Desenvolvedora Front-End",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.phone, color: Colors.deepPurple),
                    SizedBox(width: 10),
                    Text("+55 (14) 99677-2006"),
                  ],
                ),
                const SizedBox(height: 10),  
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.email, color: Colors.deepPurple),
                    SizedBox(width: 10),
                    Text("maisaamaral220@gmail.com"),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.person, color: Colors.deepPurple),
                    SizedBox(width: 10),
                    Text("linkedin.com/in/maisaamaral"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
