//
//  AnswerView.swift
//  QuizMaster
//
//  Created by Bakhrom Usmanov on 17/10/24.
//

import SwiftUI

struct AnswerTextView: View {
   let answer: String
   
   init(answer: String) {
      self.answer = answer
   }
   
    var body: some View {
       Text(answer)
          .font(.body)
          .bold()
          .padding()
          .frame(maxWidth: .infinity)
          .border(QuizColor.accentColor, width: 4)
    }
}

#Preview {
   AnswerTextView(answer: "Text")
}
