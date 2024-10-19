//
//  ScoreView.swift
//  QuizMaster
//
//  Created by Bakhrom Usmanov on 19/10/24.
//

import SwiftUI

struct ScoreView: View {
   let viewModel: ScoreViewModel
   
   var body: some View {
      ZStack {
         QuizColor.backgroundColor.ignoresSafeArea()
         VStack {
            Spacer()
            Text("Final Score:")
               .font(.largeTitle)
               .bold()
            Text("\(viewModel.percentage)%")
               .font(.largeTitle)
               .bold()
               .padding()
            Spacer()
            VStack {
               Text("\(viewModel.correctGuesses) ✅")
               Text("\(viewModel.incorrectGuesses) ❌")
            }.font(.title)
            Spacer()
            NavigationLink(
               destination: QuizView(),
               label: {
                  BottomTextView(text: "Re-take Quiz")
               })
         }
         .foregroundColor(.white)
         .navigationBarHidden(true)
      }
   }
}

#Preview {
   ScoreView(viewModel: ScoreViewModel(correctGuesses: 5, incorrectGuesses: 2))
}
