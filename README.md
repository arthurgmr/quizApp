# QuizApp

QuizApp is a simple Flutter application designed to test your knowledge of basic Flutter concepts like Stateless and Stateful Widgets, styling, and interaction. The goal of this project is to help learners understand fundamental Flutter principles by building an interactive quiz.

## Table of Contents
- [Project Overview](#project-overview)
- [Features](#features)
- [Learning Objectives](#learning-objectives)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Usage](#usage)


## Project Overview

The QuizApp consists of three questions about personal preferences. Each answer has a corresponding "weight," and the total score is calculated based on the selected answers. At the end of the quiz, a congratulatory message is displayed with an animation, and the user is given an option to retry the quiz.

## Features
- Multiple choice quiz with weighted answers
- A dynamic result message based on total score
- Reset the quiz for multiple tries
- Animated congratulatory message using the **Lottie** package
- Use of basic styling and layout techniques with Flutter

## Learning Objectives

This project helps in learning:
- How to create **Stateless** and **Stateful** Widgets.
- Managing state using `setState()`.
- Passing functions and arguments between widgets.
- Building reusable components like buttons and questions.
- Applying simple animations using the `Lottie` package.
- Organizing and structuring Flutter projects.

## Project Structure

The main structure of the app is organized into several Dart files:

- `main.dart`: Entry point of the app where the main logic is implemented.
- `quiz.dart`: Contains the `Quiz` widget, which controls the display of questions and answers.
- `question.dart`: Defines the `Question` widget, which renders the current question.
- `answer.dart`: Defines the `AnswerButton` widget, which renders a button for each possible answer.
- `result.dart`: Handles the result screen, displaying the final message and animation.

## Installation

To run this project on your local machine, follow these steps:

1. **Clone the repository**:
  ```bash
    git clone https://github.com/arthurgmr/quizApp.git
    cd quizApp
  ```
2. **Install Flutter dependencies**:
Ensure you have Flutter installed on your machine. Run the following command to install the required dependencies:
  ```bash
    flutter pub get
  ```

3. **Run the app**:
To start the app on an emulator or connected device, use:
```bash
  flutter run
```

## Usage

The app consists of a series of questions with multiple-choice answers. Each answer has a weight associated with it. When a user selects an answer, the weight is added to the total, and the next question is presented. After answering all the questions, the app calculates the total weight and displays a result message based on the score, along with a fun animation.

### Result Messages:

- **0-10**: "Congratulations!"
- **11-17**: "You are good!"
- **18-24**: "You are amazing!"
- **25+**: "Jedi Level!"

The user can reset the quiz by clicking the **Try again** button.

## Dependencies

The app uses the following Flutter packages:

- `flutter`: Core Flutter SDK.
- `lottie`: For rendering animated JSON-based Lottie animations. You can find more animations at LottieFiles.

## License

This project is open-source and available under the MIT License.