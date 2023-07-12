import 'package:flutter/material.dart';

class Accessibility extends StatelessWidget {
  const Accessibility({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Acessibilidade em dispositivos móveis',
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const MergeSemantics(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Como isso funciona?',
                    semanticsLabel: 'Título da seção: Como isso funciona?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Card(
                    color: Color.fromRGBO(0, 112, 153, 10),
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        'Teste de leitor de tela: O leitor de tela deve ser capaz de descrever todos os controles na página quando são tocados, e as descrições devem ser compreensíveis. Teste o seu aplicativo com o TalkBack (Android) e o VoiceOver (iOS).',
                        semanticsLabel:
                            'Um card de cor azul com a seguinte explicação: Teste de leitor de tela: O leitor de tela deve ser capaz de descrever todos os controles na página quando são tocados, e as descrições devem ser compreensíveis. Teste o seu aplicativo com o TalkBack (Android) e o VoiceOver (iOS).',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            MergeSemantics(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    semanticsLabel: 'Título da seção: Galeria de Imagem',
                    'Galeria de Imagem',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Image.asset(
                    'assets/images/cat.jpg',
                    semanticLabel:
                        'Uma imagem de um gato branco com manchas cinzas que se destacam ao redor dos olhos e na cabeça, que está levemente virada para a esquerda. Ao lado do gato, há uma borboleta branca com linhas finas laranjas e contorno preto, com pequenas manchas laranjas acima do nariz.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Semantics(
              liveRegion: true,
              label: 'Voltar para a tela inicial.',
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(0, 112, 153, 10),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Voltar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
