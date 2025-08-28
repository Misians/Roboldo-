// main.dart

import 'package:flutter/material.dart';
import 'questions.dart';
import 'udp_helper.dart';

void main() {
  runApp(const QuizApp());
}

// Enum para gerenciar o estado do assistente
enum AssistantState { neutral, correct, incorrect }

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          primary: Colors.blue[700],
          secondary: Colors.lightBlueAccent,
          onPrimary: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.blue[50],
        useMaterial3: true,
      ),
      home: const StartScreen(),
    );
  }
}

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  Category? _selectedCategory;
  Difficulty? _selectedDifficulty;

  void _startQuiz() {
    if (_selectedCategory != null && _selectedDifficulty != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => QuizScreen(
            category: _selectedCategory!,
            difficulty: _selectedDifficulty!,
          ),
        ),
      );
    }
  }

  String _getCategoryName(Category cat) {
    switch (cat) {
      case Category.portugues:
        return 'Português';
      case Category.matematica:
        return 'Matemática';
      case Category.historia:
        return 'História';
      case Category.geografia:
        return 'Geografia';
      case Category.ciencias:
        return 'Ciências';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha o tema e dificuldade'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Selecione o tema:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 250,
                child: DropdownButton<Category>(
                  isExpanded: true,
                  value: _selectedCategory,
                  items: Category.values.map((cat) {
                    return DropdownMenuItem(
                      value: cat,
                      child: Text(_getCategoryName(cat)),
                    );
                  }).toList(),
                  onChanged: (cat) => setState(() => _selectedCategory = cat),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Selecione a dificuldade:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 250,
                height: 50,
                child: DropdownButton<Difficulty>(
                  isExpanded: true,
                  value: _selectedDifficulty,
                  items: Difficulty.values.map((dif) {
                    return DropdownMenuItem(
                      value: dif,
                      child: Text(
                        dif.name[0].toUpperCase() + dif.name.substring(1),
                      ),
                    );
                  }).toList(),
                  onChanged: (dif) => setState(() => _selectedDifficulty = dif),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: _startQuiz,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Iniciar Quiz',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  final Category category;
  final Difficulty difficulty;

  const QuizScreen({
    super.key,
    required this.category,
    required this.difficulty,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late List<Question> _filteredQuestions;

  int _questionIndex = 0;
  int _score = 0;
  AssistantState _assistantState = AssistantState.neutral;

  final String _neutralRobotPath = 'assets/neutro.png';
  final String _happyRobotPath = 'assets/feliz.png';
  final String _sadRobotPath = 'assets/triste.png';

  @override
  void initState() {
    super.initState();
    _filteredQuestions = allQuestions
        .where(
          (q) =>
              q.category == widget.category &&
              q.difficulty == widget.difficulty,
        )
        .toList();
    _filteredQuestions.shuffle();
  }

  Future<void> _sendUDPData(String data) async {
    await UDPHelper.sendUDP(data);
  }

  void _answerQuestion(bool isCorrect, String userAnswer) {
    if (_assistantState != AssistantState.neutral) return;

    final question = _filteredQuestions[_questionIndex];
    final correctAnswer = question.answers.firstWhere(
      (a) => a['isCorrect'] == true,
    )['text'];
    final udpString = '${question.questionText}|$correctAnswer|$userAnswer';

    _sendUDPData(udpString);

    setState(() {
      if (isCorrect) {
        _score++;
        _assistantState = AssistantState.correct;
      } else {
        _assistantState = AssistantState.incorrect;
      }
    });

    Future.delayed(const Duration(seconds: 2), () {
      if (_questionIndex < _filteredQuestions.length - 1) {
        setState(() {
          _questionIndex++;
          _assistantState = AssistantState.neutral;
        });
      } else {
        setState(() {
          _questionIndex = _filteredQuestions.length;
          _assistantState = AssistantState.neutral;
        });
      }
    });
  }

  void _resetQuiz() {
    Navigator.popUntil(context, (route) => route.isFirst);
  }

  String _getRobotImagePath() {
    switch (_assistantState) {
      case AssistantState.correct:
        return _happyRobotPath;
      case AssistantState.incorrect:
        return _sadRobotPath;
      case AssistantState.neutral:
        return _neutralRobotPath;
    }
  }

  Widget _buildResultScreen() {
    String resultText;
    String robotImage;

    if (_score <= _filteredQuestions.length * 0.4) {
      resultText = 'Nada mal, mas pode melhorar!';
      robotImage = _sadRobotPath;
    } else if (_score <= _filteredQuestions.length * 0.7) {
      resultText = 'Muito bem! Você é um aluno muito bom!';
      robotImage = _neutralRobotPath;
    } else {
      resultText = 'Espetacular! Você é um aluno incrível!';
      robotImage = _happyRobotPath;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(robotImage, height: 150, width: 150),
        const SizedBox(height: 20),
        Text(
          'Quiz Concluído!',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Sua pontuação final é: $_score / ${_filteredQuestions.length}',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 20),
        Text(
          resultText,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: _resetQuiz,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: const Text(
            'Voltar para o Início',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_filteredQuestions.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('SUPER QUIZZ DO ROBOLDO'),
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Nenhuma pergunta encontrada para esta categoria e dificuldade.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: _resetQuiz,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Voltar', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('SUPER QUIZZ DO ROBOLDO'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        centerTitle: true,
      ),
      body: _questionIndex < _filteredQuestions.length
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                            return ScaleTransition(
                              scale: animation,
                              child: child,
                            );
                          },
                      child: Image.asset(
                        _getRobotImagePath(),
                        key: ValueKey<String>(_getRobotImagePath()),
                        height: 150,
                        width: 150,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      _filteredQuestions[_questionIndex].questionText,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    ...(_filteredQuestions[_questionIndex].answers).map((
                      answer,
                    ) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () => _answerQuestion(
                              answer['isCorrect'] as bool,
                              answer['text'] as String,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.secondary,
                              foregroundColor: Theme.of(
                                context,
                              ).colorScheme.onPrimary,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 16,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 4,
                            ),
                            child: Text(
                              answer['text'] as String,
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ],
                ),
              ),
            )
          : Center(child: _buildResultScreen()),
    );
  }
}
