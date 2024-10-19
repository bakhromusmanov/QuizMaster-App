//
//  ScoreViewModel.swift
//  QuizMaster
//
//  Created by Bakhrom Usmanov on 19/10/24.
//

import Foundation

struct ScoreViewModel {
  let correctGuesses: Int
  let incorrectGuesses: Int

  var percentage: Int {
    (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
  }
   
   init(correctGuesses: Int, incorrectGuesses: Int) {
      self.correctGuesses = correctGuesses
      self.incorrectGuesses = incorrectGuesses
   }
}
