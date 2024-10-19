//
//  BottomTextView.swift
//  QuizMaster
//
//  Created by Bakhrom Usmanov on 18/10/24.
//

import SwiftUI

struct BottomTextView : View {
   let text: String
   
   var body: some View {
      HStack {
         Spacer()
         Text(text)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
         Spacer()
      }.background(QuizColor.accentColor)
   }
}

#Preview {
   BottomTextView(text: "Text")
}
