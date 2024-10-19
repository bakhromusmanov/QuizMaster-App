//
//  Question.swift
//  QuizMaster
//
//  Created by Bakhrom Usmanov on 17/10/24.
//

import Foundation

struct Question : Hashable {
   let questionText: String
   let possibleAnswers: [String]
   let correctAnswerIndex: Int
   
   init(questionText: String, possibleAnswers: [String], correctAnswerIndex: Int) {
      self.questionText = questionText
      self.possibleAnswers = possibleAnswers
      self.correctAnswerIndex = correctAnswerIndex
   }
   
   static var allQuestions = [
      Question(questionText: "What year was the first iPhone released?",
               possibleAnswers: ["2005", "2007", "2008", "2006"],
               correctAnswerIndex: 1),
      Question(questionText: "Who co-founded Apple alongside Steve Jobs?",
               possibleAnswers: ["Bill Gates", "Mark Zuckerberg", "Steve Wozniak", "Larry Page"],
               correctAnswerIndex: 2),
      Question(questionText: "What was the original operating system on the first iPhone called?",
               possibleAnswers: ["iOS", "iPhone OS", "Mac OS", "Apple OS"],
               correctAnswerIndex: 1),
      Question(questionText: "Which product was famously announced by Steve Jobs as a revolutionary three-in-one device in 2007?",
               possibleAnswers: ["iPad", "iMac", "iPhone", "Apple Watch"],
               correctAnswerIndex: 2),
      Question(questionText: "In which year did Apple launch the App Store for iOS?",
               possibleAnswers: ["2009", "2008", "2010", "2007"],
               correctAnswerIndex: 1),
      Question(questionText: "What major feature did iOS 2 introduce that transformed the iPhone’s capabilities?",
               possibleAnswers: ["Voice Control", "Multitasking", "App Store", "FaceTime"],
               correctAnswerIndex: 2),
      Question(questionText: "Which iOS version introduced the feature known as Siri?",
               possibleAnswers: ["iOS 4", "iOS 5", "iOS 6", "iOS 7"],
               correctAnswerIndex: 1),
      Question(questionText: "When Steve Jobs returned to Apple in 1997, what product line is credited with saving the company from bankruptcy?",
               possibleAnswers: ["iPod", "iMac G3", "iBook", "Power Mac"],
               correctAnswerIndex: 1),
      Question(questionText: "What was the project name for the first iPhone's development, which Apple kept under strict secrecy?",
               possibleAnswers: ["Project Purple", "Operation Titan", "Project Zero", "iPhone Genesis"],
               correctAnswerIndex: 0),
      Question(questionText: "Which feature of the first iPhone amazed the world by removing the need for a physical keyboard?",
               possibleAnswers: ["Touch ID", "Multi-touch display", "Voice Control", "3D Touch"],
               correctAnswerIndex: 1)
   ]
}
