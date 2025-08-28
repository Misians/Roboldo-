// lib/questions.dart

enum Category { portugues, matematica, historia, geografia, ciencias }

enum Difficulty { facil, medio, dificil }

class Question {
  final String questionText;
  final List<Map<String, dynamic>> answers;
  final Category category;
  final Difficulty difficulty;

  Question({
    required this.questionText,
    required this.answers,
    required this.category,
    required this.difficulty,
  });
}

final List<Question> allQuestions = [
  // ----------------------------------------------------
  // Português - Fácil (1º ao 5º ano) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText: 'Qual é o plural de "cão"?',
    answers: [
      {'text': 'Cãos', 'isCorrect': false},
      {'text': 'Cães', 'isCorrect': true},
      {'text': 'Cãoses', 'isCorrect': false},
      {'text': 'Cãezes', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual das palavras abaixo é um sinônimo de "alegre"?',
    answers: [
      {'text': 'Triste', 'isCorrect': false},
      {'text': 'Feliz', 'isCorrect': true},
      {'text': 'Calmo', 'isCorrect': false},
      {'text': 'Bravo', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Quantas sílabas tem a palavra "escola"?',
    answers: [
      {'text': 'Duas', 'isCorrect': false},
      {'text': 'Três', 'isCorrect': true},
      {'text': 'Quatro', 'isCorrect': false},
      {'text': 'Uma', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual dessas palavras está escrita corretamente?',
    answers: [
      {'text': 'Excessão', 'isCorrect': false},
      {'text': 'Exceção', 'isCorrect': true},
      {'text': 'Excessao', 'isCorrect': false},
      {'text': 'Escessão', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Em qual das frases o ponto final foi usado corretamente?',
    answers: [
      {'text': 'Eu gosto de bolo.', 'isCorrect': true},
      {'text': 'Você vai para casa?', 'isCorrect': false},
      {'text': 'Que dia lindo.', 'isCorrect': false},
      {'text': 'Corre, Ana.', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText:
        'Qual o nome do sinal que parece uma cobrinha em cima do "a" ou do "o"?',
    answers: [
      {'text': 'Acento', 'isCorrect': false},
      {'text': 'Til', 'isCorrect': true},
      {'text': 'Ponto', 'isCorrect': false},
      {'text': 'Trema', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'O que é um antônimo de "bonito"?',
    answers: [
      {'text': 'Feio', 'isCorrect': true},
      {'text': 'Lindo', 'isCorrect': false},
      {'text': 'Grande', 'isCorrect': false},
      {'text': 'Pequeno', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Complete a frase: "As estrelas ________ no céu."',
    answers: [
      {'text': 'Brilha', 'isCorrect': false},
      {'text': 'Brilho', 'isCorrect': false},
      {'text': 'Brilham', 'isCorrect': true},
      {'text': 'Brilhou', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual das palavras é um nome próprio?',
    answers: [
      {'text': 'Cadeira', 'isCorrect': false},
      {'text': 'Cidade', 'isCorrect': false},
      {'text': 'Maria', 'isCorrect': true},
      {'text': 'Livro', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual o diminutivo de "casa"?',
    answers: [
      {'text': 'Casão', 'isCorrect': false},
      {'text': 'Casinha', 'isCorrect': true},
      {'text': 'Casita', 'isCorrect': false},
      {'text': 'Casebre', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.facil,
  ),

  // ----------------------------------------------------
  // Português - Médio (6º ao 9º ano) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText:
        'Qual é a classe gramatical da palavra "rápido" em "O carro é muito rápido"?',
    answers: [
      {'text': 'Advérbio', 'isCorrect': false},
      {'text': 'Substantivo', 'isCorrect': false},
      {'text': 'Adjetivo', 'isCorrect': true},
      {'text': 'Verbo', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Na frase "Choveu muito ontem", o sujeito é:',
    answers: [
      {'text': 'Ontem', 'isCorrect': false},
      {'text': 'Choveu', 'isCorrect': false},
      {'text': 'Oculto', 'isCorrect': false},
      {'text': 'Inexistente', 'isCorrect': true},
    ],
    category: Category.portugues,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Identifique a figura de linguagem na frase: "O Sol beijou a Terra."',
    answers: [
      {'text': 'Metáfora', 'isCorrect': false},
      {'text': 'Hipérbole', 'isCorrect': false},
      {'text': 'Personificação', 'isCorrect': true},
      {'text': 'Comparação', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Qual a conjugação correta do verbo "ter" no presente do indicativo para "nós"?',
    answers: [
      {'text': 'Nós tem', 'isCorrect': false},
      {'text': 'Nós temos', 'isCorrect': true},
      {'text': 'Nós temo', 'isCorrect': false},
      {'text': 'Nós teremos', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Qual o objeto direto na frase: "A menina comprou um livro."',
    answers: [
      {'text': 'A menina', 'isCorrect': false},
      {'text': 'comprou', 'isCorrect': false},
      {'text': 'um livro', 'isCorrect': true},
      {'text': 'direto', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Identifique o pronome demonstrativo na frase: "Este carro é meu."',
    answers: [
      {'text': 'meu', 'isCorrect': false},
      {'text': 'carro', 'isCorrect': false},
      {'text': 'é', 'isCorrect': false},
      {'text': 'Este', 'isCorrect': true},
    ],
    category: Category.portugues,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Em qual das opções a palavra "mal" está empregada como advérbio?',
    answers: [
      {'text': 'O mal do século.', 'isCorrect': false},
      {'text': 'Ele se sentiu mal.', 'isCorrect': true},
      {'text': 'O bem e o mal.', 'isCorrect': false},
      {'text': 'O mal do país.', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Qual a regência verbal da frase: "Ele se esqueceu do livro"?',
    answers: [
      {'text': 'Verbo transitivo direto', 'isCorrect': false},
      {'text': 'Verbo transitivo indireto', 'isCorrect': true},
      {'text': 'Verbo intransitivo', 'isCorrect': false},
      {'text': 'Verbo de ligação', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'O que é um substantivo coletivo?',
    answers: [
      {'text': 'Uma palavra que indica um único ser', 'isCorrect': false},
      {
        'text': 'Uma palavra que indica um conjunto de seres da mesma espécie',
        'isCorrect': true,
      },
      {'text': 'Uma palavra que indica uma qualidade', 'isCorrect': false},
      {'text': 'Uma palavra que indica uma ação', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Qual a principal característica do gênero lírico?',
    answers: [
      {'text': 'Narrar eventos', 'isCorrect': false},
      {'text': 'Apresentar personagens e diálogos', 'isCorrect': false},
      {'text': 'Expressar sentimentos e emoções', 'isCorrect': true},
      {'text': 'Descrever paisagens', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.medio,
  ),

  // ----------------------------------------------------
  // Português - Difícil (Ensino Médio) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText:
        'Qual é a função sintática de "a caneta" na frase: "Preciso de a caneta"?',
    answers: [
      {'text': 'Objeto direto', 'isCorrect': false},
      {'text': 'Adjunto adnominal', 'isCorrect': false},
      {'text': 'Objeto indireto', 'isCorrect': true},
      {'text': 'Complemento nominal', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'A crase é obrigatória em qual das seguintes frases?',
    answers: [
      {'text': 'Fui a casa.', 'isCorrect': false},
      {'text': 'Fui à praia.', 'isCorrect': true},
      {'text': 'Fui à pé.', 'isCorrect': false},
      {'text': 'Fui a Campinas.', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Na oração "Se ela vier, avise-me", a oração subordinada é classificada como:',
    answers: [
      {'text': 'Subordinada substantiva', 'isCorrect': false},
      {'text': 'Subordinada adverbial condicional', 'isCorrect': true},
      {'text': 'Subordinada adjetiva', 'isCorrect': false},
      {'text': 'Subordinada adverbial temporal', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'Qual das alternativas contém uma oração sem sujeito?',
    answers: [
      {'text': 'A vida é bela.', 'isCorrect': false},
      {'text': 'Eles chegaram cedo.', 'isCorrect': false},
      {'text': 'Está chovendo muito.', 'isCorrect': true},
      {'text': 'Crianças brincam no parque.', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Qual a figura de linguagem presente na expressão "chuva de aplausos"?',
    answers: [
      {'text': 'Metáfora', 'isCorrect': true},
      {'text': 'Hipérbole', 'isCorrect': false},
      {'text': 'Ironia', 'isCorrect': false},
      {'text': 'Eufemismo', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'Qual das frases possui verbo transitivo direto e indireto?',
    answers: [
      {'text': 'Ele comprou o livro.', 'isCorrect': false},
      {'text': 'A Maria entregou o presente ao João.', 'isCorrect': true},
      {'text': 'A criança sorriu.', 'isCorrect': false},
      {'text': 'O aluno obedeceu.', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'A qual escola literária brasileira pertence a obra "Memórias Póstumas de Brás Cubas"?',
    answers: [
      {'text': 'Romantismo', 'isCorrect': false},
      {'text': 'Realismo', 'isCorrect': true},
      {'text': 'Parnasianismo', 'isCorrect': false},
      {'text': 'Simbolismo', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Qual o nome dado à palavra que substitui ou acompanha o nome?',
    answers: [
      {'text': 'Adjetivo', 'isCorrect': false},
      {'text': 'Verbo', 'isCorrect': false},
      {'text': 'Pronome', 'isCorrect': true},
      {'text': 'Advérbio', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'Qual das palavras abaixo tem prefixo e sufixo?',
    answers: [
      {'text': 'Desleal', 'isCorrect': false},
      {'text': 'Libraria', 'isCorrect': false},
      {'text': 'Infielmente', 'isCorrect': true},
      {'text': 'Felizmente', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Qual a principal característica do modernismo na primeira fase?',
    answers: [
      {'text': 'Busca pela perfeição formal', 'isCorrect': false},
      {'text': 'Ruptura com o passado e nacionalismo', 'isCorrect': true},
      {'text': 'Idealização do amor e da natureza', 'isCorrect': false},
      {'text': 'Retorno aos valores clássicos', 'isCorrect': false},
    ],
    category: Category.portugues,
    difficulty: Difficulty.dificil,
  ),

  // ----------------------------------------------------
  // Matemática - Fácil (1º ao 5º ano) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText: 'Quanto é 2 + 3?',
    answers: [
      {'text': '4', 'isCorrect': false},
      {'text': '5', 'isCorrect': true},
      {'text': '6', 'isCorrect': false},
      {'text': '3', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual é o próximo número da sequência: 2, 4, 6, ...?',
    answers: [
      {'text': '8', 'isCorrect': true},
      {'text': '10', 'isCorrect': false},
      {'text': '7', 'isCorrect': false},
      {'text': '6', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Quanto é 5 x 5?',
    answers: [
      {'text': '10', 'isCorrect': false},
      {'text': '25', 'isCorrect': true},
      {'text': '20', 'isCorrect': false},
      {'text': '30', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Se você tem 10 maçãs e come 3, quantas maçãs sobram?',
    answers: [
      {'text': '6', 'isCorrect': false},
      {'text': '7', 'isCorrect': true},
      {'text': '8', 'isCorrect': false},
      {'text': '13', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'O que é um número par?',
    answers: [
      {'text': 'Um número que termina em 1, 3, 5, 7 ou 9', 'isCorrect': false},
      {
        'text': 'Um número que pode ser dividido por 2 sem deixar resto',
        'isCorrect': true,
      },
      {'text': 'Um número maior que 10', 'isCorrect': false},
      {'text': 'Um número que termina em 0', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Quanto é 10 - 4?',
    answers: [
      {'text': '5', 'isCorrect': false},
      {'text': '6', 'isCorrect': true},
      {'text': '7', 'isCorrect': false},
      {'text': '4', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText:
        'Se você tem 2 bolos e corta cada um em 4 fatias, quantas fatias você terá no total?',
    answers: [
      {'text': '6', 'isCorrect': false},
      {'text': '8', 'isCorrect': true},
      {'text': '12', 'isCorrect': false},
      {'text': '4', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual é o triplo de 5?',
    answers: [
      {'text': '10', 'isCorrect': false},
      {'text': '15', 'isCorrect': true},
      {'text': '20', 'isCorrect': false},
      {'text': '25', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual a forma geométrica de uma bola?',
    answers: [
      {'text': 'Cubo', 'isCorrect': false},
      {'text': 'Cilindro', 'isCorrect': false},
      {'text': 'Esfera', 'isCorrect': true},
      {'text': 'Cone', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText:
        'Se um relógio marca 3 horas, que ângulo os ponteiros formam?',
    answers: [
      {'text': '45 graus', 'isCorrect': false},
      {'text': '90 graus', 'isCorrect': true},
      {'text': '180 graus', 'isCorrect': false},
      {'text': '360 graus', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.facil,
  ),

  // ----------------------------------------------------
  // Matemática - Médio (6º ao 9º ano) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText: 'Qual é o valor de x na equação 2x + 5 = 15?',
    answers: [
      {'text': '5', 'isCorrect': true},
      {'text': '10', 'isCorrect': false},
      {'text': '7', 'isCorrect': false},
      {'text': '2', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Quanto é 25% de 200?',
    answers: [
      {'text': '50', 'isCorrect': true},
      {'text': '25', 'isCorrect': false},
      {'text': '100', 'isCorrect': false},
      {'text': '20', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Se o lado de um quadrado mede 5cm, qual é a sua área?',
    answers: [
      {'text': '10cm²', 'isCorrect': false},
      {'text': '20cm²', 'isCorrect': false},
      {'text': '25cm²', 'isCorrect': true},
      {'text': '50cm²', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'A soma dos ângulos internos de um triângulo é sempre igual a:',
    answers: [
      {'text': '90 graus', 'isCorrect': false},
      {'text': '180 graus', 'isCorrect': true},
      {'text': '270 graus', 'isCorrect': false},
      {'text': '360 graus', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Qual o valor de π (pi) arredondado para duas casas decimais?',
    answers: [
      {'text': '3.14', 'isCorrect': true},
      {'text': '3.15', 'isCorrect': false},
      {'text': '3.41', 'isCorrect': false},
      {'text': '3.13', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Qual é a fórmula para calcular a área de um círculo?',
    answers: [
      {'text': '2 * π * r', 'isCorrect': false},
      {'text': 'π * r²', 'isCorrect': true},
      {'text': 'π * d', 'isCorrect': false},
      {'text': '2 * π * r²', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Qual o resultado da expressão 3² + 4²?',
    answers: [
      {'text': '7', 'isCorrect': false},
      {'text': '25', 'isCorrect': true},
      {'text': '14', 'isCorrect': false},
      {'text': '49', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'O que é um número primo?',
    answers: [
      {
        'text': 'Um número que pode ser dividido por 1 e por ele mesmo',
        'isCorrect': true,
      },
      {'text': 'Um número que termina em 7', 'isCorrect': false},
      {'text': 'Um número que tem mais de dois divisores', 'isCorrect': false},
      {'text': 'Qualquer número ímpar', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Qual é o valor da expressão (10 - 2) * 3?',
    answers: [
      {'text': '24', 'isCorrect': true},
      {'text': '28', 'isCorrect': false},
      {'text': '30', 'isCorrect': false},
      {'text': '16', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Se o diâmetro de um círculo é 10cm, qual é o seu raio?',
    answers: [
      {'text': '5cm', 'isCorrect': true},
      {'text': '10cm', 'isCorrect': false},
      {'text': '20cm', 'isCorrect': false},
      {'text': '25cm', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.medio,
  ),

  // ----------------------------------------------------
  // Matemática - Difícil (Ensino Médio) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText: 'Qual é a raiz quadrada de 49?',
    answers: [
      {'text': '6', 'isCorrect': false},
      {'text': '7', 'isCorrect': true},
      {'text': '8', 'isCorrect': false},
      {'text': '9', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'Se f(x) = 2x + 1, qual é o valor de f(3)?',
    answers: [
      {'text': '7', 'isCorrect': true},
      {'text': '6', 'isCorrect': false},
      {'text': '8', 'isCorrect': false},
      {'text': '9', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'Qual a solução da equação x² - 4 = 0?',
    answers: [
      {'text': 'x = 2', 'isCorrect': false},
      {'text': 'x = -2', 'isCorrect': false},
      {'text': 'x = 2 e x = -2', 'isCorrect': true},
      {'text': 'x = 4', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'A hipotenusa de um triângulo retângulo com catetos 3 e 4 é:',
    answers: [
      {'text': '5', 'isCorrect': true},
      {'text': '7', 'isCorrect': false},
      {'text': '9', 'isCorrect': false},
      {'text': '12', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'Qual o valor do logaritmo de 100 na base 10?',
    answers: [
      {'text': '1', 'isCorrect': false},
      {'text': '2', 'isCorrect': true},
      {'text': '10', 'isCorrect': false},
      {'text': '100', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'Qual o resultado da integral indefinida de 2x dx?',
    answers: [
      {'text': 'x + C', 'isCorrect': false},
      {'text': '2x² + C', 'isCorrect': false},
      {'text': 'x² + C', 'isCorrect': true},
      {'text': '2x + C', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Uma matriz identidade é uma matriz quadrada com elementos 1 na diagonal principal e 0 nas demais posições. Qual das opções abaixo é uma matriz identidade 2x2?',
    answers: [
      {'text': '[[1, 0], [0, 1]]', 'isCorrect': true},
      {'text': '[[1, 1], [0, 0]]', 'isCorrect': false},
      {'text': '[[0, 1], [1, 0]]', 'isCorrect': false},
      {'text': '[[1, 1], [1, 1]]', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'Qual a derivada de f(x) = x³?',
    answers: [
      {'text': '3x²', 'isCorrect': true},
      {'text': '3x', 'isCorrect': false},
      {'text': 'x²', 'isCorrect': false},
      {'text': 'x³/3', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'Qual o valor da expressão 2! + 3! ?',
    answers: [
      {'text': '5', 'isCorrect': false},
      {'text': '8', 'isCorrect': true},
      {'text': '10', 'isCorrect': false},
      {'text': '9', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Em um baralho de 52 cartas, qual a probabilidade de tirar um ás?',
    answers: [
      {'text': '1/13', 'isCorrect': true},
      {'text': '4/52', 'isCorrect': false},
      {'text': '1/4', 'isCorrect': false},
      {'text': '1/52', 'isCorrect': false},
    ],
    category: Category.matematica,
    difficulty: Difficulty.dificil,
  ),

  // ----------------------------------------------------
  // História - Fácil (1º ao 5º ano) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText: 'Quem foi o primeiro presidente do Brasil?',
    answers: [
      {'text': 'Dom Pedro I', 'isCorrect': false},
      {'text': 'Princesa Isabel', 'isCorrect': false},
      {'text': 'Marechal Deodoro da Fonseca', 'isCorrect': true},
      {'text': 'Getúlio Vargas', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Em que ano o Brasil foi descoberto?',
    answers: [
      {'text': '1492', 'isCorrect': false},
      {'text': '1500', 'isCorrect': true},
      {'text': '1600', 'isCorrect': false},
      {'text': '1822', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Quem proclamou a independência do Brasil?',
    answers: [
      {'text': 'Princesa Isabel', 'isCorrect': false},
      {'text': 'Tiradentes', 'isCorrect': false},
      {'text': 'Marechal Deodoro', 'isCorrect': false},
      {'text': 'Dom Pedro I', 'isCorrect': true},
    ],
    category: Category.historia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual civilização antiga construiu as pirâmides?',
    answers: [
      {'text': 'Gregos', 'isCorrect': false},
      {'text': 'Romanos', 'isCorrect': false},
      {'text': 'Egípcios', 'isCorrect': true},
      {'text': 'Chineses', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Em que dia comemoramos a Independência do Brasil?',
    answers: [
      {'text': '7 de setembro', 'isCorrect': true},
      {'text': '15 de novembro', 'isCorrect': false},
      {'text': '21 de abril', 'isCorrect': false},
      {'text': '25 de dezembro', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Quem foi o líder da Inconfidência Mineira?',
    answers: [
      {'text': 'Dom Pedro II', 'isCorrect': false},
      {'text': 'Tiradentes', 'isCorrect': true},
      {'text': 'Dom João VI', 'isCorrect': false},
      {'text': 'José Bonifácio', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText:
        'Qual das seguintes invenções é do período da Revolução Industrial?',
    answers: [
      {'text': 'Máquina a vapor', 'isCorrect': true},
      {'text': 'Imprensa', 'isCorrect': false},
      {'text': 'Computador', 'isCorrect': false},
      {'text': 'Automóvel', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual o nome do rio mais importante do Egito Antigo?',
    answers: [
      {'text': 'Rio Amazonas', 'isCorrect': false},
      {'text': 'Rio Nilo', 'isCorrect': true},
      {'text': 'Rio Tiete', 'isCorrect': false},
      {'text': 'Rio Ganges', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'O que foi a Lei Áurea?',
    answers: [
      {'text': 'Lei que aboliu a monarquia', 'isCorrect': false},
      {'text': 'Lei que aboliu a escravidão', 'isCorrect': true},
      {'text': 'Lei que criou a República', 'isCorrect': false},
      {'text': 'Lei que deu terras aos escravos', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Quem foi a princesa que assinou a Lei Áurea?',
    answers: [
      {'text': 'Princesa Isabel', 'isCorrect': true},
      {'text': 'Princesa Leopoldina', 'isCorrect': false},
      {'text': 'Princesa Diana', 'isCorrect': false},
      {'text': 'Princesa Charlotte', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.facil,
  ),

  // ----------------------------------------------------
  // História - Médio (6º ao 9º ano) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText: 'Qual evento marcou o início da Primeira Guerra Mundial?',
    answers: [
      {'text': 'Ataque a Pearl Harbor', 'isCorrect': false},
      {
        'text': 'Assassinato do arquiduque Francisco Ferdinando',
        'isCorrect': true,
      },
      {'text': 'Queda do Muro de Berlim', 'isCorrect': false},
      {'text': 'Tratado de Versalhes', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Em que ano foi proclamada a República do Brasil?',
    answers: [
      {'text': '1822', 'isCorrect': false},
      {'text': '1889', 'isCorrect': true},
      {'text': '1808', 'isCorrect': false},
      {'text': '1930', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Qual o nome do tratado que dividiu as terras descobertas entre Portugal e Espanha?',
    answers: [
      {'text': 'Tratado de Madri', 'isCorrect': false},
      {'text': 'Tratado de Tordesilhas', 'isCorrect': true},
      {'text': 'Tratado de Versalhes', 'isCorrect': false},
      {'text': 'Tratado de Paris', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Qual civilização construiu a cidade de Machu Picchu?',
    answers: [
      {'text': 'Maias', 'isCorrect': false},
      {'text': 'Astecas', 'isCorrect': false},
      {'text': 'Incas', 'isCorrect': true},
      {'text': 'Romanos', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'O Renascimento foi um movimento cultural que ocorreu em qual período histórico?',
    answers: [
      {'text': 'Idade Antiga', 'isCorrect': false},
      {'text': 'Idade Média', 'isCorrect': false},
      {'text': 'Idade Moderna', 'isCorrect': true},
      {'text': 'Idade Contemporânea', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Quem foi o líder da Revolução Russa de 1917?',
    answers: [
      {'text': 'Leon Trotsky', 'isCorrect': false},
      {'text': 'Karl Marx', 'isCorrect': false},
      {'text': 'Vladimir Lenin', 'isCorrect': true},
      {'text': 'Joseph Stalin', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Qual o nome da doutrina que defendia a separação da Igreja do Estado no Brasil?',
    answers: [
      {'text': 'Padroado', 'isCorrect': false},
      {'text': 'Regalismo', 'isCorrect': false},
      {'text': 'Laicismo', 'isCorrect': true},
      {'text': 'Imperialismo', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Qual o principal produto explorado no período colonial do Brasil?',
    answers: [
      {'text': 'Ouro', 'isCorrect': false},
      {'text': 'Café', 'isCorrect': false},
      {'text': 'Cana-de-açúcar', 'isCorrect': true},
      {'text': 'Borracha', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'A Batalha de Waterloo, em 1815, marcou a derrota final de qual imperador?',
    answers: [
      {'text': 'Julius Caesar', 'isCorrect': false},
      {'text': 'Napoleão Bonaparte', 'isCorrect': true},
      {'text': 'Alexandre, o Grande', 'isCorrect': false},
      {'text': 'Napoleão III', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'A Revolução Francesa começou em qual ano?',
    answers: [
      {'text': '1776', 'isCorrect': false},
      {'text': '1789', 'isCorrect': true},
      {'text': '1815', 'isCorrect': false},
      {'text': '1848', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.medio,
  ),

  // ----------------------------------------------------
  // História - Difícil (Ensino Médio) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText: 'Qual dos eventos abaixo NÃO está relacionado à Guerra Fria?',
    answers: [
      {'text': 'Crise dos Mísseis de Cuba', 'isCorrect': false},
      {'text': 'Revolução Gloriosa', 'isCorrect': true},
      {'text': 'Guerra do Vietnã', 'isCorrect': false},
      {'text': 'Construção do Muro de Berlim', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Qual o nome do movimento de resistência contra a ditadura militar no Brasil que defendia o uso de armas?',
    answers: [
      {'text': 'Oposição Parlamentar', 'isCorrect': false},
      {'text': 'Luta Armada', 'isCorrect': true},
      {'text': 'Movimento Diretas Já', 'isCorrect': false},
      {'text': 'Passeata dos Cem Mil', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'O sistema de "apartheid" foi adotado em qual país?',
    answers: [
      {'text': 'África do Sul', 'isCorrect': true},
      {'text': 'Índia', 'isCorrect': false},
      {'text': 'Austrália', 'isCorrect': false},
      {'text': 'Estados Unidos', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'O que foi o "Plano Marshall"?',
    answers: [
      {
        'text':
            'Plano para a reconstrução da Europa após a Segunda Guerra Mundial',
        'isCorrect': true,
      },
      {'text': 'Plano de colonização da África', 'isCorrect': false},
      {'text': 'Plano para o fim da Guerra Fria', 'isCorrect': false},
      {'text': 'Plano para a criação da OTAN', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Qual o evento que é considerado o estopim da Segunda Guerra Mundial?',
    answers: [
      {'text': 'Ataque a Pearl Harbor', 'isCorrect': false},
      {'text': 'Invasão da Polônia pela Alemanha', 'isCorrect': true},
      {'text': 'Anexação da Áustria', 'isCorrect': false},
      {'text': 'Ataque à França', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Qual das seguintes figuras históricas foi uma líder do movimento sufragista?',
    answers: [
      {'text': 'Marie Curie', 'isCorrect': false},
      {'text': 'Rosa Parks', 'isCorrect': false},
      {'text': 'Emmeline Pankhurst', 'isCorrect': true},
      {'text': 'Joana D\'Arc', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'O que foi a "Lei do Ventre Livre"?',
    answers: [
      {
        'text': 'Lei que aboliu totalmente a escravidão no Brasil',
        'isCorrect': false,
      },
      {
        'text': 'Lei que libertava os escravos com mais de 60 anos',
        'isCorrect': false,
      },
      {
        'text':
            'Lei que libertava os filhos de escravas nascidos a partir de sua data',
        'isCorrect': true,
      },
      {
        'text': 'Lei que dava liberdade para todos os escravos na cidade',
        'isCorrect': false,
      },
    ],
    category: Category.historia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Qual o principal motivo para a queda do Império Romano do Ocidente?',
    answers: [
      {'text': 'Crise econômica e invasões bárbaras', 'isCorrect': true},
      {'text': 'Mudança do poder para o Oriente', 'isCorrect': false},
      {'text': 'Aumento da população', 'isCorrect': false},
      {'text': 'Fim do cristianismo', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'Quem foi o líder da Revolução Cubana?',
    answers: [
      {'text': 'Augusto Pinochet', 'isCorrect': false},
      {'text': 'Fidel Castro', 'isCorrect': true},
      {'text': 'Salvador Allende', 'isCorrect': false},
      {'text': 'Che Guevara', 'isCorrect': false},
    ],
    category: Category.historia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'O que foi o "Movimento das Diretas Já" no Brasil?',
    answers: [
      {
        'text': 'Um movimento para o fim da ditadura militar',
        'isCorrect': false,
      },
      {'text': 'Um movimento para o fim da escravidão', 'isCorrect': false},
      {
        'text': 'Um movimento que pedia eleições diretas para presidente',
        'isCorrect': true,
      },
      {
        'text': 'Um movimento que pedia a reeleição de Getúlio Vargas',
        'isCorrect': false,
      },
    ],
    category: Category.historia,
    difficulty: Difficulty.dificil,
  ),

  // ----------------------------------------------------
  // Geografia - Fácil (1º ao 5º ano) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText: 'Qual a capital do estado de São Paulo?',
    answers: [
      {'text': 'Campinas', 'isCorrect': false},
      {'text': 'São Paulo', 'isCorrect': true},
      {'text': 'Rio de Janeiro', 'isCorrect': false},
      {'text': 'Belo Horizonte', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual o maior bioma do Brasil?',
    answers: [
      {'text': 'Amazônia', 'isCorrect': true},
      {'text': 'Cerrado', 'isCorrect': false},
      {'text': 'Mata Atlântica', 'isCorrect': false},
      {'text': 'Caatinga', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual é o nome do oceano que banha a costa do Brasil?',
    answers: [
      {'text': 'Oceano Pacífico', 'isCorrect': false},
      {'text': 'Oceano Índico', 'isCorrect': false},
      {'text': 'Oceano Atlântico', 'isCorrect': true},
      {'text': 'Oceano Ártico', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual o nome do nosso planeta?',
    answers: [
      {'text': 'Marte', 'isCorrect': false},
      {'text': 'Vênus', 'isCorrect': false},
      {'text': 'Júpiter', 'isCorrect': false},
      {'text': 'Terra', 'isCorrect': true},
    ],
    category: Category.geografia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'O que a sigla "DF" significa no mapa do Brasil?',
    answers: [
      {'text': 'Distrito Federal', 'isCorrect': true},
      {'text': 'Divisão Florestal', 'isCorrect': false},
      {'text': 'Documentos Fiscais', 'isCorrect': false},
      {'text': 'Diretoria de Fronteiras', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Em que continente o Brasil está localizado?',
    answers: [
      {'text': 'África', 'isCorrect': false},
      {'text': 'Europa', 'isCorrect': false},
      {'text': 'América do Sul', 'isCorrect': true},
      {'text': 'Ásia', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual das opções abaixo é um estado do Brasil?',
    answers: [
      {'text': 'Argentina', 'isCorrect': false},
      {'text': 'São Paulo', 'isCorrect': true},
      {'text': 'Portugal', 'isCorrect': false},
      {'text': 'Colômbia', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText:
        'Qual o nome da linha imaginária que passa pelo meio da Terra?',
    answers: [
      {'text': 'Trópico de Câncer', 'isCorrect': false},
      {'text': 'Linha do Equador', 'isCorrect': true},
      {'text': 'Meridiano de Greenwich', 'isCorrect': false},
      {'text': 'Círculo Polar Ártico', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual dos elementos a seguir é um tipo de recurso natural?',
    answers: [
      {'text': 'Carro', 'isCorrect': false},
      {'text': 'Petróleo', 'isCorrect': true},
      {'text': 'Celular', 'isCorrect': false},
      {'text': 'Cadeira', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText:
        'Qual das opções é um tipo de vegetação de clima seco no Brasil?',
    answers: [
      {'text': 'Mata Atlântica', 'isCorrect': false},
      {'text': 'Floresta Amazônica', 'isCorrect': false},
      {'text': 'Caatinga', 'isCorrect': true},
      {'text': 'Cerrado', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.facil,
  ),

  // ----------------------------------------------------
  // Geografia - Médio (6º ao 9º ano) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText:
        'Qual região do Brasil é conhecida por ter a maior população?',
    answers: [
      {'text': 'Norte', 'isCorrect': false},
      {'text': 'Nordeste', 'isCorrect': false},
      {'text': 'Sudeste', 'isCorrect': true},
      {'text': 'Sul', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Qual é o nome da linha imaginária que divide a Terra em hemisfério Norte e Sul?',
    answers: [
      {'text': 'Meridiano de Greenwich', 'isCorrect': false},
      {'text': 'Trópico de Câncer', 'isCorrect': false},
      {'text': 'Equador', 'isCorrect': true},
      {'text': 'Círculo Polar Ártico', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Qual o nome do fenômeno que causa o aquecimento global?',
    answers: [
      {'text': 'El Niño', 'isCorrect': false},
      {'text': 'Efeito estufa', 'isCorrect': true},
      {'text': 'Chuvas ácidas', 'isCorrect': false},
      {'text': 'Destruição da camada de ozônio', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Qual país faz fronteira com o Brasil ao sul?',
    answers: [
      {'text': 'Venezuela', 'isCorrect': false},
      {'text': 'Bolívia', 'isCorrect': false},
      {'text': 'Argentina', 'isCorrect': true},
      {'text': 'Peru', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'O que é a latitude?',
    answers: [
      {
        'text': 'A distância de um ponto da Terra ao meridiano de Greenwich',
        'isCorrect': false,
      },
      {
        'text': 'A distância de um ponto da Terra à linha do Equador',
        'isCorrect': true,
      },
      {'text': 'A altitude de um ponto da Terra', 'isCorrect': false},
      {'text': 'A distância entre dois pontos', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Qual o nome do deserto mais quente do mundo?',
    answers: [
      {'text': 'Deserto do Saara', 'isCorrect': true},
      {'text': 'Deserto da Antártida', 'isCorrect': false},
      {'text': 'Deserto do Atacama', 'isCorrect': false},
      {'text': 'Deserto do Gobi', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Qual dos seguintes rios é considerado o mais longo do mundo?',
    answers: [
      {'text': 'Rio Nilo', 'isCorrect': false},
      {'text': 'Rio Amazonas', 'isCorrect': true},
      {'text': 'Rio Mississipi', 'isCorrect': false},
      {'text': 'Rio Ganges', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Qual o nome da camada de ar que envolve a Terra?',
    answers: [
      {'text': 'Hidrosfera', 'isCorrect': false},
      {'text': 'Litosfera', 'isCorrect': false},
      {'text': 'Atmosfera', 'isCorrect': true},
      {'text': 'Biosfera', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'O que são "placas tectônicas"?',
    answers: [
      {'text': 'Camadas da atmosfera', 'isCorrect': false},
      {
        'text': 'Grandes blocos da crosta terrestre que se movem',
        'isCorrect': true,
      },
      {'text': 'Formações rochosas submersas', 'isCorrect': false},
      {'text': 'Ilhas vulcânicas', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Qual o nome do clima característico da região Sul do Brasil?',
    answers: [
      {'text': 'Tropical', 'isCorrect': false},
      {'text': 'Semiárido', 'isCorrect': false},
      {'text': 'Subtropical', 'isCorrect': true},
      {'text': 'Equatorial', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.medio,
  ),

  // ----------------------------------------------------
  // Geografia - Difícil (Ensino Médio) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText:
        'Qual das seguintes cidades é um exemplo de metrópole global?',
    answers: [
      {'text': 'Londres', 'isCorrect': true},
      {'text': 'Recife', 'isCorrect': false},
      {'text': 'Manaus', 'isCorrect': false},
      {'text': 'Buenos Aires', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'O processo de urbanização no Brasil é caracterizado principalmente por:',
    answers: [
      {'text': 'Crescimento de cidades médias e pequenas', 'isCorrect': false},
      {
        'text': 'Dispersão de atividades econômicas no campo',
        'isCorrect': false,
      },
      {
        'text': 'Concentração populacional e macrocefalia urbana',
        'isCorrect': true,
      },
      {'text': 'Aumento da população rural', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'A Bacia do Rio Paraná é um importante recurso natural para a geração de energia. Qual é o tipo de usina que mais se destaca nesta bacia?',
    answers: [
      {'text': 'Termoelétrica', 'isCorrect': false},
      {'text': 'Hidrelétrica', 'isCorrect': true},
      {'text': 'Nuclear', 'isCorrect': false},
      {'text': 'Eólica', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Qual dos seguintes conceitos está relacionado à distribuição espacial das atividades econômicas?',
    answers: [
      {'text': 'Poder de compra', 'isCorrect': false},
      {'text': 'Globalização', 'isCorrect': false},
      {'text': 'Organização do espaço geográfico', 'isCorrect': true},
      {'text': 'Divisão do trabalho', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'O que a sigla "IDH" significa em termos de desenvolvimento humano?',
    answers: [
      {'text': 'Índice de Desenvolvimento Humano', 'isCorrect': true},
      {'text': 'Índice de Desigualdade Habitacional', 'isCorrect': false},
      {'text': 'Indicador de Densidade Populacional', 'isCorrect': false},
      {'text': 'Índice de Desenvolvimento Econômico', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'O que é a "desindustrialização" no contexto brasileiro?',
    answers: [
      {'text': 'Aumento da produção industrial', 'isCorrect': false},
      {
        'text': 'Fechamento de indústrias por falta de investimento',
        'isCorrect': false,
      },
      {
        'text': 'Perda de importância do setor industrial na economia',
        'isCorrect': true,
      },
      {'text': 'Transferência de indústrias para o campo', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Qual é o nome da corrente de ar que causa o clima frio no sul do Brasil?',
    answers: [
      {'text': 'Massas de ar tropical', 'isCorrect': false},
      {'text': 'Frente polar', 'isCorrect': true},
      {'text': 'Monções', 'isCorrect': false},
      {'text': 'Correntes de jato', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'A qual região o termo "Cinturão do Fogo" se refere?',
    answers: [
      {'text': 'A uma região de vulcões no Brasil', 'isCorrect': false},
      {
        'text':
            'A uma área de alta concentração de vulcões e terremotos ao redor do Oceano Pacífico',
        'isCorrect': true,
      },
      {'text': 'A uma área de desmatamento na Amazônia', 'isCorrect': false},
      {'text': 'A uma área de clima desértico', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Qual é o nome da principal fonte de energia utilizada no Brasil?',
    answers: [
      {'text': 'Energia solar', 'isCorrect': false},
      {'text': 'Energia eólica', 'isCorrect': false},
      {'text': 'Energia hidrelétrica', 'isCorrect': true},
      {'text': 'Energia nuclear', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'A qual bioma brasileiro é associada a Mata de Araucárias?',
    answers: [
      {'text': 'Pampa', 'isCorrect': false},
      {'text': 'Cerrado', 'isCorrect': false},
      {'text': 'Mata Atlântica', 'isCorrect': true},
      {'text': 'Floresta Amazônica', 'isCorrect': false},
    ],
    category: Category.geografia,
    difficulty: Difficulty.dificil,
  ),

  // ----------------------------------------------------
  // Ciências - Fácil (1º ao 5º ano) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText: 'O que a planta usa para fazer a fotossíntese?',
    answers: [
      {'text': 'Água e terra', 'isCorrect': false},
      {'text': 'Luz do sol e água', 'isCorrect': true},
      {'text': 'Água e sal', 'isCorrect': false},
      {'text': 'Água e sombra', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual o nome do processo em que a água vira vapor?',
    answers: [
      {'text': 'Condensação', 'isCorrect': false},
      {'text': 'Evaporação', 'isCorrect': true},
      {'text': 'Precipitação', 'isCorrect': false},
      {'text': 'Solidificação', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual a principal fonte de energia para os seres vivos?',
    answers: [
      {'text': 'Água', 'isCorrect': false},
      {'text': 'Luz', 'isCorrect': false},
      {'text': 'Alimento', 'isCorrect': true},
      {'text': 'Ar', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'O que são planetas rochosos?',
    answers: [
      {'text': 'Planetas feitos de rochas e ferro', 'isCorrect': true},
      {'text': 'Planetas feitos de gelo', 'isCorrect': false},
      {'text': 'Planetas feitos de gás', 'isCorrect': false},
      {'text': 'Planetas com anéis', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual o maior órgão do corpo humano?',
    answers: [
      {'text': 'Cérebro', 'isCorrect': false},
      {'text': 'Pulmão', 'isCorrect': false},
      {'text': 'Coração', 'isCorrect': false},
      {'text': 'Pele', 'isCorrect': true},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'O que a lagarta se torna depois de passar pelo casulo?',
    answers: [
      {'text': 'Libélula', 'isCorrect': false},
      {'text': 'Abelha', 'isCorrect': false},
      {'text': 'Borboleta', 'isCorrect': true},
      {'text': 'Mosca', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual o estado físico da água a 0°C?',
    answers: [
      {'text': 'Líquido', 'isCorrect': false},
      {'text': 'Gasoso', 'isCorrect': false},
      {'text': 'Sólido', 'isCorrect': true},
      {'text': 'Plasma', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual o nome da energia gerada pelo vento?',
    answers: [
      {'text': 'Energia solar', 'isCorrect': false},
      {'text': 'Energia eólica', 'isCorrect': true},
      {'text': 'Energia nuclear', 'isCorrect': false},
      {'text': 'Energia hídrica', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText:
        'Qual o nome do gás que os seres humanos precisam para respirar?',
    answers: [
      {'text': 'Nitrogênio', 'isCorrect': false},
      {'text': 'Dióxido de carbono', 'isCorrect': false},
      {'text': 'Oxigênio', 'isCorrect': true},
      {'text': 'Gás nobre', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.facil,
  ),
  Question(
    questionText: 'Qual dos seguintes animais é um mamífero?',
    answers: [
      {'text': 'Tartaruga', 'isCorrect': false},
      {'text': 'Baleia', 'isCorrect': true},
      {'text': 'Pinguim', 'isCorrect': false},
      {'text': 'Sapo', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.facil,
  ),

  // ----------------------------------------------------
  // Ciências - Médio (6º ao 9º ano) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText: 'Qual a principal função do coração no corpo humano?',
    answers: [
      {'text': 'Filtrar o sangue', 'isCorrect': false},
      {'text': 'Bombear o sangue para o corpo', 'isCorrect': true},
      {'text': 'Armazenar oxigênio', 'isCorrect': false},
      {'text': 'Processar os alimentos', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'A camada de ozônio protege a Terra de qual tipo de radiação?',
    answers: [
      {'text': 'Infravermelha', 'isCorrect': false},
      {'text': 'Raios gama', 'isCorrect': false},
      {'text': 'Luz visível', 'isCorrect': false},
      {'text': 'Raios ultravioleta', 'isCorrect': true},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Qual a principal função das mitocôndrias em uma célula?',
    answers: [
      {'text': 'Produção de energia', 'isCorrect': true},
      {'text': 'Controle da célula', 'isCorrect': false},
      {'text': 'Armazenamento de nutrientes', 'isCorrect': false},
      {'text': 'Divisão celular', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Qual o nome do processo de transformação de energia solar em química pelas plantas?',
    answers: [
      {'text': 'Respiração', 'isCorrect': false},
      {'text': 'Transpiração', 'isCorrect': false},
      {'text': 'Fotossíntese', 'isCorrect': true},
      {'text': 'Decomposição', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'O que é a cadeia alimentar?',
    answers: [
      {'text': 'O ciclo de vida dos animais', 'isCorrect': false},
      {
        'text':
            'A sequência de seres vivos que servem de alimento uns para os outros',
        'isCorrect': true,
      },
      {'text': 'A forma como os animais se locomovem', 'isCorrect': false},
      {'text': 'O processo de respiração das plantas', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Qual dos seguintes planetas é um gigante gasoso?',
    answers: [
      {'text': 'Terra', 'isCorrect': false},
      {'text': 'Marte', 'isCorrect': false},
      {'text': 'Júpiter', 'isCorrect': true},
      {'text': 'Vênus', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'O que é um ecossistema?',
    answers: [
      {'text': 'Um grupo de animais da mesma espécie', 'isCorrect': false},
      {
        'text': 'Uma comunidade de seres vivos e o ambiente em que eles vivem',
        'isCorrect': true,
      },
      {'text': 'Um habitat natural', 'isCorrect': false},
      {'text': 'Uma floresta tropical', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'O que causa as estações do ano na Terra?',
    answers: [
      {'text': 'A rotação da Terra', 'isCorrect': false},
      {
        'text': 'A inclinação do eixo de rotação da Terra em relação ao Sol',
        'isCorrect': true,
      },
      {'text': 'As fases da Lua', 'isCorrect': false},
      {'text': 'A distância da Terra ao Sol', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText:
        'Qual o processo de transformação de uma semente em uma planta?',
    answers: [
      {'text': 'Polinização', 'isCorrect': false},
      {'text': 'Germinação', 'isCorrect': true},
      {'text': 'Fotossíntese', 'isCorrect': false},
      {'text': 'Transpiração', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.medio,
  ),
  Question(
    questionText: 'Qual o principal gás responsável pelo efeito estufa?',
    answers: [
      {'text': 'Oxigênio', 'isCorrect': false},
      {'text': 'Nitrogênio', 'isCorrect': false},
      {'text': 'Metano', 'isCorrect': false},
      {'text': 'Dióxido de carbono', 'isCorrect': true},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.medio,
  ),

  // ----------------------------------------------------
  // Ciências - Difícil (Ensino Médio) - 10 Questões
  // ----------------------------------------------------
  Question(
    questionText: 'Qual dos seguintes elementos é um gás nobre?',
    answers: [
      {'text': 'Oxigênio', 'isCorrect': false},
      {'text': 'Hélio', 'isCorrect': true},
      {'text': 'Hidrogênio', 'isCorrect': false},
      {'text': 'Nitrogênio', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'A principal diferença entre células procarióticas e eucarióticas é a presença de:',
    answers: [
      {'text': 'Mitocôndrias', 'isCorrect': false},
      {'text': 'Parede celular', 'isCorrect': false},
      {'text': 'Núcleo definido', 'isCorrect': true},
      {'text': 'Membrana plasmática', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Qual o nome do processo de divisão celular que resulta em células com metade do número de cromossomos?',
    answers: [
      {'text': 'Mitose', 'isCorrect': false},
      {'text': 'Meiose', 'isCorrect': true},
      {'text': 'Citocinese', 'isCorrect': false},
      {'text': 'Cromossomo', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'O que são vírus?',
    answers: [
      {'text': 'Células vivas', 'isCorrect': false},
      {'text': 'Seres vivos com células procarióticas', 'isCorrect': false},
      {'text': 'Parasitas intracelulares obrigatórios', 'isCorrect': true},
      {
        'text': 'Seres vivos que podem viver sem hospedeiro',
        'isCorrect': false,
      },
    ],
    category: Category.ciencias,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'Qual a principal função do DNA?',
    answers: [
      {'text': 'Síntese de proteínas', 'isCorrect': false},
      {'text': 'Armazenar informações genéticas', 'isCorrect': true},
      {'text': 'Produzir energia para a célula', 'isCorrect': false},
      {'text': 'Transportar oxigênio', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Qual a unidade de medida de energia utilizada nos alimentos?',
    answers: [
      {'text': 'Joules', 'isCorrect': false},
      {'text': 'Calorias', 'isCorrect': true},
      {'text': 'Watts', 'isCorrect': false},
      {'text': 'Volts', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'O que a lei de Ohm descreve?',
    answers: [
      {'text': 'A relação entre massa e energia', 'isCorrect': false},
      {
        'text': 'A relação entre voltagem, corrente e resistência',
        'isCorrect': true,
      },
      {'text': 'A força de atração entre corpos', 'isCorrect': false},
      {'text': 'O movimento de corpos celestes', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText:
        'Qual o nome do processo em que as plantas liberam vapor de água para a atmosfera?',
    answers: [
      {'text': 'Fotossíntese', 'isCorrect': false},
      {'text': 'Respiração', 'isCorrect': false},
      {'text': 'Transpiração', 'isCorrect': true},
      {'text': 'Gutação', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'O que é um elemento químico?',
    answers: [
      {
        'text': 'Um grupo de átomos com o mesmo número de nêutrons',
        'isCorrect': false,
      },
      {
        'text': 'Uma substância pura composta por um único tipo de átomo',
        'isCorrect': true,
      },
      {'text': 'Uma molécula com mais de dois átomos', 'isCorrect': false},
      {'text': 'Uma mistura de gases nobres', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.dificil,
  ),
  Question(
    questionText: 'A qual reino a levedura (fungo) pertence?',
    answers: [
      {'text': 'Reino Animalia', 'isCorrect': false},
      {'text': 'Reino Plantae', 'isCorrect': false},
      {'text': 'Reino Fungi', 'isCorrect': true},
      {'text': 'Reino Monera', 'isCorrect': false},
    ],
    category: Category.ciencias,
    difficulty: Difficulty.dificil,
  ),
];
