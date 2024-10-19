//
//  DataModel.swift
//  QuizMaster
//
//  Created by Bakhrom Usmanov on 17/10/24.
//

import Foundation

struct Quiz {
   private let allQuestions: [Question]
   private(set) var guesses: [Question:Int]
   private(set) var score: Int
   var isOver: Bool
   private(set) var currentQuestionIndex: Int
   var numberOfQuestions: Int {
      return allQuestions.count
   }
   var currentQuestion: Question {
      return allQuestions[currentQuestionIndex]
   }
   var numberOfGuesses: (correct: Int, incorrect: Int) {
      var count: (correct: Int, incorrect: Int) = (0,0)
      for (question, guessedIndex) in guesses {
         if question.correctAnswerIndex == guessedIndex {
            count.correct += 1
         } else {
            count.incorrect += 1
         }
      }
      return count
   }
   
   init() {
      allQuestions = Question.allQuestions.shuffled()
      guesses = [:]
      score = 0
      currentQuestionIndex = 0
      isOver = false
   }
   
   mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
       guesses[currentQuestion] = index
   }
   
   mutating func updateQuestion(){
      if currentQuestionIndex < numberOfQuestions - 1 {
         currentQuestionIndex += 1
      } else {
         isOver = true
      }
   }
   
   func getCorrectAnswer(at index: Int) -> Int {
      return currentQuestion.correctAnswerIndex
   }
   
   func getPossibleAnswers(at index: Int) -> [String] {
      return currentQuestion.possibleAnswers
   }
}
