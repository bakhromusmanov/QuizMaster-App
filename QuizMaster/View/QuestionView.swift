//
//  QuestionView.swift
//  QuizMaster
//
//  Created by Bakhrom Usmanov on 19/10/24.
//

import SwiftUI

struct QuestionView: View {
   
   @EnvironmentObject var viewModel: QuizViewModel
   let question: Question
   
   var body: some View {
      VStack {
         Text(question.questionText)
            .font(.title)
            .bold()
            .multilineTextAlignment(.leading)
         Spacer()
         VStack {
            ForEach(
               0..<question.possibleAnswers.count,
               id: \.self
            ) { answerIndex in
               Button(
                  action: {
                     viewModel.makeGuess(at: answerIndex)
                  },
                  label: {
                     AnswerTextView(
                        answer: question
                           .possibleAnswers[answerIndex]).background(
                              viewModel.color(forOptionIndex: answerIndex)
                           )
                  }).disabled(viewModel.guessWasMade)
            }
         }
      }
   }
}

#Preview {
   QuestionView(question: Quiz().currentQuestion)
      .environmentObject(QuizViewModel())
}
