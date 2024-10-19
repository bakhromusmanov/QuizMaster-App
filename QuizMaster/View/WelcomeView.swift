//
//  WelcomeView.swift
//  QuizMaster
//
//  Created by Bakhrom Usmanov on 18/10/24.
//

import SwiftUI

struct WelcomeView: View {
   var body: some View {
      NavigationView {
         ZStack {
            QuizColor.backgroundColor.ignoresSafeArea()
            VStack {
               Spacer()
               VStack(alignment: .leading, spacing: 0) {
                  Text("Select the correct answers to the following questions.")
                     .font(.largeTitle)
                     .bold()
                     .multilineTextAlignment(.center)
                     .padding()
               }
               Spacer()
               NavigationLink(
                  destination: QuizView(),
                  label: {
                     BottomTextView(text: "Start Quiz")
                  })
            }
            
         }
         .foregroundStyle(QuizColor.whiteColor)
      }
   }
}

#Preview {
   WelcomeView()
}
