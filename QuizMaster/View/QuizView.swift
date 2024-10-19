import SwiftUI

struct QuizView: View {
   
   @StateObject var viewModel = QuizViewModel()
   
   var body: some View {
      NavigationStack {
         ZStack {
            QuizColor.backgroundColor.ignoresSafeArea()
            VStack {
               VStack {
                  Text(viewModel.questionProgressText)
                     .font(.callout)
                     .padding()
                  QuestionView(question: viewModel.currentQuestion)
               }
               .padding(.bottom, 20)
               .padding(.horizontal, 20)
               
               if viewModel.guessWasMade {
                  Button(action: {
                        viewModel.displayNextQuestion()
                  }, label: {
                     BottomTextView(text: "Next")
                  })
               }
            }
         }
         .foregroundStyle(QuizColor.whiteColor)
         .navigationDestination(isPresented: $viewModel.quizIsOver) {
            let scoreViewModel = ScoreViewModel(
               correctGuesses: viewModel.correctGuesses,
               incorrectGuesses: viewModel.incorrectGuesses
            )
            ScoreView(viewModel: scoreViewModel)
         }
         .navigationBarHidden(true)
         .environmentObject(viewModel)
      }
      .navigationBarHidden(true)
   }
}

#Preview {
   QuizView()
}
