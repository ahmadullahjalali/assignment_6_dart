// ============
// QUESTION ONE
// ============

// void main() {
//   Laptop laptop1 = Laptop(1, 'Lenovo Ideapad', 8);
//   Laptop laptop2 = Laptop(1, 'Dell Insprin', 16);
//   Laptop laptop3 = Laptop(3, 'HP Pavilion', 12);

//   laptop1.printDetials();
//   laptop2.printDetials();
//   laptop3.printDetials();
// }

// class Laptop {
//   int id;
//   String name;
//   int ram;

//   Laptop(this.id, this.name, this.ram);

//   void printDetials() {
//     print('ID: $id, Name: $name, Ram: $ram GB');
//   }
// }

// ============
// QUESTION TOW
// ============

// void main() {
//   List<House> houses = [
//     House(1, 'Villa', 5000000),
//     House(2, 'Apartment', 2000000),
//     House(3, 'Bungalow', 8000000),
//   ];
//   for (House house in houses) {
//     house.printDetials();
//   }
// }

// class House {
//   int id;
//   String name;
//   double prize;

//   House(this.id, this.name, this.prize);

//   void printDetials() {
//     print('ID: $id, Name: $name, Prize: Rs.$prize');
//   }
// }

// ==============
// QUESTION THREE
// ==============

// void main() {
//   print(Gender.values);
// }

// enum Gender { male, female, others }

// =============
// QUESTION FOUR
// =============

// void main() {
//   Cat cat = Cat(1, 'Tom', 'Grey', 'Meow', 'Ali', 5500);
//   cat.printDetials();
// }

// class Animal {
//   int id;
//   String name;
//   String color;

//   Animal(this.id, this.name, this.color);
// }

// class Cat extends Animal {
//   String sound;
//   String owner;
//   double price;

//   Cat(int id, String name, String color, this.sound, this.owner, this.price)
//       : super(id, name, color);

//   void printDetials() {
//     print('ID: $id, Name: $name, Color: $color');
//     print('Sound: $sound, Owner: $owner, Price: Rs.$price');
//   }
// }

// =============
// QUESTION FIVE
// =============

// void main() {
//   Camera cam1 = Camera(1, 'Canon', 'Black', 35000);
//   Camera cam2 = Camera(2, 'Nikon', 'Red', 45000);
//   Camera cam3 = Camera(3, 'Sony', 'Sliver', 55000);

//   cam1.printDetials();
//   cam2.printDetials();
//   cam3.printDetials();
// }

// class Camera {
//   int _id;
//   String _brand;
//   String _color;
//   double _price;

//   Camera(this._id, this._brand, this._color, this._price);

//   int get id => _id;
//   String get barnd => _brand;
//   String get color => _color;
//   double get price => _price;

//   set id(int id) => _id = id;
//   set brand(String brand) => _brand = brand;
//   set color(String color) => _color = color;
//   set price(double price) => _price = price;

//   void printDetials() {
//     print('ID: $_id, Brand: $_brand, Color: $_color, Price: $_price');
//   }
// }

// =============
// QUESTION SIX
// =============

// void main() {
//   Bottle bottle = BottleFactory.createBottle();
//   bottle.open();
// }

// abstract class Bottle {
//   void open();
// }

// interface class CokeBottle implements Bottle {
//   @override
//   void open() {
//     print('Coke bottle is opened');
//   }
// }

// class BottleFactory {
//   static Bottle createBottle() {
//     return CokeBottle();
//   }
// }

// ==============
// QUESTION SEVEN
// ==============

// void main() {
//   // Creating quiz questions
//   QuizQuestion question1 = QuizQuestion('What is the capital of France?',
//       ['Paris', 'London', 'Berlin', 'Madrid'], 0);
//   QuizQuestion question2 = QuizQuestion(
//       'What is the largest continent in the world?',
//       ['Asia', 'Europe', 'Africa', 'North America'],
//       0);
//   QuizQuestion question3 = QuizQuestion(
//       'What is the highest mountain in the world?',
//       ['Mount Everest', 'K2', 'Kangchenjunga', 'Lhotse'],
//       0);

//   // Creating a quiz game with the questions
//   QuizGame game = QuizGame([question1, question2, question3]);

//   // Creating a quiz app with the game
//   QuizApp app = QuizApp(game);

//   // Starting the quiz app
//   app.startGame();
// }

// // Class representing a quiz question
// class QuizQuestion {
//   String question;
//   List<String> options;
//   int answerIndex;

//   QuizQuestion(this.question, this.options, this.answerIndex);
// }

// // Class representing a quiz game
// class QuizGame {
//   List<QuizQuestion> questions;
//   int currentQuestionIndex = 0;
//   int score = 0;

//   QuizGame(this.questions);

//   // Method to get the current question
//   QuizQuestion getCurrentQuestion() {
//     return questions[currentQuestionIndex];
//   }

//   // Method to check if the given answer is correct
//   bool checkAnswer(int answerIndex) {
//     if (answerIndex == getCurrentQuestion().answerIndex) {
//       score++;
//       return true;
//     } else {
//       return false;
//     }
//   }

//   // Method to move to the next question
//   void nextQuestion() {
//     if (currentQuestionIndex < questions.length - 1) {
//       currentQuestionIndex++;
//     } else {
//       endGame();
//     }
//   }

//   // Method to end the game and display the final score
//   void endGame() {
//     print('Game Over! Your score: $score');
//   }
// }

// // Class representing the quiz application
// class QuizApp {
//   QuizGame game;

//   var stdin;

//   QuizApp(this.game);

//   // Method to start the quiz game
//   void startGame() {
//     while (game.currentQuestionIndex < game.questions.length) {
//       QuizQuestion question = game.getCurrentQuestion();
//       print(question.question);

//       for (int i = 0; i < question.options.length; i++) {
//         print('${i + 1}. ${question.options[i]}');
//       }

//       String input = stdin.readLineSync();
//       int answerIndex = int.parse(input) - 1;

//       if (game.checkAnswer(answerIndex)) {
//         print('Correct!');
//       } else {
//         print('Incorrect!');
//       }

//       game.nextQuestion();
//     }

//     game.endGame();
//   }
// }
