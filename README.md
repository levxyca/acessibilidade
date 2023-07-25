# Acessibilidade digital 💾

## Tabela de conteúdos

[1. Acessibilidade Web](#acessibilidade-web)

- [1.1 Guias de Acessibilidade](#guias-de-acessibilidade)
- [1.2 HTML](#html)
- [1.3 Extensões](#extensões)
- [1.4 Leitores de tela](#leitores-de-tela)

[2. Acessibilidade Mobile](#acessibilidade-mobile)

- [2.1 Testes Automatizados](#testes-automatizados)
- [2.2 Teste seu aplicativo usando a API de Diretrizes de Acessibilidade do Flutter](#teste-seu-aplicativo-usando-a-api-de-diretrizes-de-acessibilidade-do-flutter)
- [2.3 Leitores de tela para celular](#leitores-de-tela-para-celular)

[3. Palestra sobre a importância da acessibilidade e como introduzir isso para dentro dos nossos projetos com HTML](#palestra)

[3. Referências](#referências)

## Acessibilidade Web

### Guias de Acessibilidade

[WCAG](https://www.w3c.br/traducoes/wcag/wcag21-pt-BR/)

[Guia WCAG](https://guia-wcag.com/)

[MDN Acessibilidade](https://developer.mozilla.org/pt-BR/docs/Web/Accessibility)

[Web para todos](https://mwpt.com.br/)

[Acessibilidade Legal](http://www.acessibilidadelegal.com/)

### HTML

[Principais TAGS "Estruturais" do HTML5](https://github.com/levxyca/tags-estruturais-html5)

### Extensões

[Lighthouse](https://developers.google.com/web/tools/lighthouse?hl=pt-br)

[axe DevTools](https://www.deque.com/axe/devtools/)

### Leitores de tela

[NVDA](https://www.nvaccess.org/)

[Thunder](https://www.webbie.org.uk/thunder/)

[Jaws](https://osbsoftware.com.br/produto/jaws)

[DOSVOX](http://intervox.nce.ufrj.br/dosvox/download.htm)

[Screen Reader](https://chrome.google.com/webstore/detail/screen-reader/kgejglhpjiefppelpmljglcjbhoiplfn)

## Acessibilidade Mobile

### Lista de verificação de acessibilidade para aplicativos

> Informações encontradas na documentação do Flutter em [Accessibility release checklist](https://docs.flutter.dev/accessibility-and-localization/accessibility?tab=desktop#accessibility-release-checklist)

- **Interações ativas**: verifique se todas as ações interativas realizam alguma função. Certifique-se de que os botões façam algo quando pressionados. Por exemplo, se você tem um botão que não faz nada quando pressionado, altere-o para mostrar uma mensagem explicando o que aconteceu.
- **Leitor de tela**: o leitor de tela deve ser capaz de descrever todos os controles na página quando você toca neles, e as descrições devem ser compreensíveis. Teste seu aplicativo com o [TalkBack](https://support.google.com/accessibility/android/answer/6007100?hl=pt-BR) (Android) e o [VoiceOver](https://support.apple.com/pt-br/guide/iphone/iph3e2e415f/ios) (iOS).
- **Relação de contraste**: verifique se existe um contraste adequado entre os controles e o plano de fundo. Certifique-se de que a relação de contraste seja de pelo menos 4,5:1 para garantir a legibilidade. Isso é especialmente importante para pessoas com dificuldades de visão.
- **Troca de contexto**: nada deve mudar automaticamente o contexto do usuário enquanto ele digita informações. Mudanças bruscas podem confundir o usuário. Sempre forneça confirmação ou aviso antes de fazer alterações importantes.
- **Alvos tocáveis**: todos os alvos tocáveis devem ter pelo menos 48x48 pixels. Isso torna mais fácil para as pessoas usuárias tocarem os elementos na tela.
- **Erros**: garanta que ações importantes possam ser desfeitas. Se houver erros, forneça sugestões de correção sempre que possível, para ajudar os usuários a resolverem problemas.
- **Inversão de cores e escala de cinza**: os controles devem ser utilizáveis e legíveis nos modos de visão de cores deficientes e em escala de cinza.
- **Fatores de escala**: a interface do usuário deve permanecer legível e utilizável mesmo em tamanhos de texto muito grandes ou em escalas de exibição diferentes.

### Testes automatizados

Testes automatizados são procedimentos de verificação de software executados automaticamente por programas de computador, em vez de serem feitos manualmente por pessoas. Eles garantem que um programa ou aplicativo funcionem corretamente, identificando erros e falhas de forma eficiente.

Ao seguir um conjunto de instruções pré-programadas, esses testes verificam se todas as partes do software estão trabalhando adequadamente. Caso algum problema seja encontrado, as pessoas desenvolvedoras podem corrigi-lo antes que o software seja entregue ass pessoas que vão utilizá-lo, assegurando uma melhor qualidade e confiabilidade do produto final.

Em resumo, os testes automatizados são uma ferramenta valiosa no desenvolvimento de software, pois ajudam a garantir a funcionalidade adequada do programa e a identificar problemas de forma rápida e sistemática, economizando tempo e esforço de quem desenvolve e melhorando a experiência de quem utiliza.

#### Accessibility Scanner

Podemos testar alguns dos itens da lista de verificação de acessibilidade de forma automatizada no android usando o [Accessibility Scanner](https://play.google.com/store/apps/details?id=com.google.android.apps.accessibility.auditor&hl=en).

O Accessibility Scanner é uma ferramenta que analisa a interface de um aplicativo e fornece recomendações sobre como melhorar sua acessibilidade.

O Accessibility Scanner permite que qualquer pessoa, não apenas pessoas desenvolvedoras, identifiquem, rapidamente e facilmente, uma série de melhorias comuns de acessibilidade; como, por exemplo, aumentar o tamanho de alvos de toque pequenos, aumentar o contraste para texto e imagens e fornecer descrições de conteúdo para elementos gráficos sem rótulo.

#### Teste seu aplicativo usando a API de Diretrizes de Acessibilidade do Flutter

Essa API é uma ferramenta muito útil no Flutter para verificar se a interface do seu aplicativo é acessível para todas as pessoas. As recomendações de acessibilidade incluem coisas como contraste de texto, tamanho adequado dos botões e etiquetas claras para os elementos interativos.

Com o uso da classe [AccessibilityGuideline class](https://api.flutter.dev/flutter/flutter_test/AccessibilityGuideline-class.html), você pode descrever quais recomendações o seu aplicativo deve seguir para ser considerado acessível. E com o método [meetsGuideline](https://api.flutter.dev/flutter/flutter_test/meetsGuideline.html), é possível testar se a tela do aplicativo atende a essas diretrizes de acessibilidade. Dessa forma, você torna o seu aplicativo mais inclusivo, possibilitando que todas as pessoas possam utilizá-lo de forma mais fácil e eficiente.

##### Diretrizes de acessibilidade suportadas

- [androidTapTargetGuideline](https://api.flutter.dev/flutter/flutter_test/androidTapTargetGuideline-constant.html): para seguir as diretrizes mínimas de área tocável no Android.
- [iOSTapTargetGuideline](https://api.flutter.dev/flutter/flutter_test/iOSTapTargetGuideline-constant.html): para seguir as diretrizes mínimas de área tocável no iOS.
- [textContrastGuideline](https://api.flutter.dev/flutter/flutter_test/textContrastGuideline-constant.html): para seguir as diretrizes mínimas de contraste de texto do WCAG (Web Content Accessibility Guidelines).
- [labeledTapTargetGuideline](https://api.flutter.dev/flutter/flutter_test/labeledTapTargetGuideline-constant.html): para garantir que áreas tocáveis tenham etiquetas ou rótulos associados.

### Testes manuais

Testes manuais para aplicativos de celular são verificações feitas por pessoas para garantir que o aplicativo funcione corretamente em diferentes dispositivos e situações. Durante esses testes, os examinadores exploram o aplicativo, interagindo com suas funções, como se fossem usuários reais, para verificar se tudo está funcionando corretamente.

#### Use o aplicativo com os recursos de acessibilidade ativados

Uma forma interessante de realizar esses testes é usar o próprio dispositivo com os recursos de acessibilidade ativados. Isso ajuda a entender como a aplicação se comporta em diferentes cenários. Alguns recursos de acessibilidade que você pode testar são o zoom da tela, o tamanho da fonte, a escala de cinza e temas de alto contraste. Essas verificações garantem que o aplicativo seja amigável para todas as pessoas e que a experiência seja a melhor possível.

#### Leitores de tela para celular

Testar a acessibilidade de um aplicativo de celular usando um leitor de tela manualmente é uma maneira importante de garantir que o aplicativo seja inclusivo e amigável para pessoas com deficiência visual. Um leitor de tela é uma ferramenta que converte o texto e os elementos da interface em voz ou Braille, permitindo que pessoas cegas ou com baixa visão interajam com o aplicativo. Veja como você pode realizar esse tipo de teste de forma didática:

- **Preparação**: Antes de começar, certifique-se de ter um dispositivo móvel e um leitor de tela instalado nele. Para dispositivos iOS, o [VoiceOver](https://www.apple.com/lae/accessibility/vision/) está disponível, e para dispositivos Android, você pode usar o [Talkback](https://support.google.com/accessibility/android/answer/6283677?hl=en). Ative o leitor de tela nas configurações de acessibilidade do dispositivo.

- **Explorando a interface**: abra o aplicativo e comece a explorar a interface com o leitor de tela ativado. O leitor de tela vai ler os elementos na tela à medida que você navega. Preste atenção em como as informações são apresentadas e se todas as partes da interface são identificadas corretamente.

- **Navegação**: teste a navegação pelo aplicativo usando o leitor de tela. Verifique se é fácil encontrar e interagir com os diferentes elementos, como botões, campos de entrada e links. Garanta que o leitor de tela anuncie claramente o propósito de cada elemento.

- **Legibilidade**: verifique se o leitor de tela lê o conteúdo de texto de forma clara e compreensível. Certifique-se de que todas as informações importantes, como mensagens de erro ou avisos, sejam lidas corretamente.

- **Imagens**: verifique se o leitor de tela descreve corretamente as imagens.

- **Funcionalidades acessíveis**: teste todas as funcionalidades do aplicativo com o leitor de tela ativado. Isso inclui preenchimento de formulários, seleção de opções em menus e interação com elementos dinâmicos.

- **Feedback auditivo**: observe se o aplicativo fornece feedback auditivo adequado ao realizar ações, como pressionar um botão ou concluir uma tarefa.

- **Facilidade de uso**: avalie a facilidade de uso do aplicativo com o leitor de tela. Seja sensível à experiência do usuário e busque identificar possíveis pontos de melhoria.

Ao realizar esses testes manualmente com o leitor de tela, você estará assegurando que seu aplicativo é acessível e inclusivo para pessoas com deficiência visual, proporcionando a elas uma experiência positiva e agradável durante a utilização do aplicativo.

## Palestra

### A importância da acessibilidade e como introduzir isso para dentro dos nossos projetos com HTML

◻️ Projeto manipulado durante palestra sobre: A importância da acessibilidade e como introduzir isso para dentro dos nossos projetos com HTML.

[Slides da palestra](https://www.canva.com/design/DAE9P0DohwE/6G5y2SQ90fB4QstZcbi2vQ/view)

[Vídeo da palestra](https://www.twitch.tv/videos/1461190043)

[Vídeo demonstração com a leitor de tela nas duas páginas](https://www.veed.io/view/496892fa-2395-4760-9669-021a7e80d4f7)

## Referências

[Acessibilidade na Web, Reinaldo Ferraz](https://www.google.com.br/books/edition/Acessibilidade_na_Web/pCbhDwAAQBAJ?hl=pt-BR&gbpv=0)

[Cerca de 45 milhões de brasileiros se reconhecem como pessoa com deficiência, de acordo com IBGE](https://www.gov.br/pt-br/noticias/assistencia-social/2021/09/politicas-publicas-levam-acessibilidade-e-autonomia-para-pessoas-com-deficiencia#:~:text=De%20acordo%20com%20dados%20divulgados,24%25%20da%20popula%C3%A7%C3%A3o%20do%20pa%C3%ADs.)

[PESSOAS COM DEFICIÊNCIA](https://educa.ibge.gov.br/jovens/conheca-o-brasil/populacao/20551-pessoas-com-deficiencia.html)

[Número de sites que falham nos testes do Web para Todos cai, mas ainda preocupa](https://mwpt.com.br/numero-de-sites-que-falham-nos-testes-do-web-para-todos-cai-mas-ainda-preocupa/)
