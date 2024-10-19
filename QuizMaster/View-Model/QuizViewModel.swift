//
//  QuizViewModel.swift
//  QuizMaster
//
//  Created by Bakhrom Usmanov on 19/10/24.
//

import SwiftUI

class QuizViewModel : ObservableObject {
   @Published private var quiz = Quiz()
   
   var currentQuestion: Question {
      quiz.currentQuestion
   }
   var questionProgressText: String {
      "\(quiz.currentQuestionIndex + 1)/\(quiz.numberOfQuestions)"
   }
   var guessWasMade: Bool {
      if let _ = quiz.guesses[currentQuestion] {
         return true
      } else {
         return false
      }
   }
   var quizIsOver: Bool {
      set {
         quiz.isOver = newValue
      }
      get {
         quiz.isOver
      }
   }
   
   func makeGuess (at index: Int) {
      quiz.makeGuessForCurrentQuestion(atIndex: index)
   }
   
   func color(forOptionIndex optionIndex: Int) -> Color {
      if let guessedIndex = quiz.guesses[currentQuestion] {
         if guessedIndex != optionIndex {
            return Color.clear
         } else if guessedIndex == currentQuestion.correctAnswerIndex {
            return QuizColor.greenColor
         } else {
            return QuizColor.redColor
         }
      }
      return Color.clear
   }
   
   func displayNextQuestion() {
      quiz.updateQuestion()
   }
   
   var correctGuesses: Int {
      quiz.numberOfGuesses.correct
   }
     
   var incorrectGuesses: Int {
      quiz.numberOfGuesses.incorrect
   }
}
