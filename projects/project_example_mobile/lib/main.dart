import 'package:flutter/material.dart';
import 'accessibility.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Acessibilidade',
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 56),
        child: SafeArea(
          child: Container(
            height: 56,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Acessibilidade em dispositivos móveis',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Text(
            'Como isso funciona?',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: const Text(
              'Teste de leitor de tela: O leitor de tela deve ser capaz de descrever todos os controles na página quando são tocados, e as descrições devem ser compreensíveis. Teste o seu aplicativo com o TalkBack (Android) e o VoiceOver (iOS).',
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Galeria de Imagem',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Image.asset('assets/images/cat.jpg'),
          const SizedBox(height: 24),
          InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Accessibility())),
            child: Container(
              width: 200,
              height: 36,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: const Center(
                child: Text(
                  'Acessibilidade',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
