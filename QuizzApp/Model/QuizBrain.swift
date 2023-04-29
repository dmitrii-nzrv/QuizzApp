//
//  QuizBrain.swift
//  QuizzApp
//
//  Created by Dmitrii Nazarov on 16.04.2023.
//

import Foundation

struct QuizBrain{
    
    let quiz = [
        Question(q: "There are more than 2 genders", a: "False"),
        Question(q: "Drinking less than 2 liters of water is a good idea", a: "False"),
        Question(q: "Eat healthy food = easy good shape", a: "True"),
        Question(q: "There are 7 main notes in music", a: "True"),
        Question(q: "Not eating meat is a good idea", a: "False"),
        Question(q: "Fighting is the best sport for a man with ambitions", a: "True"),
        Question(q: "Two girls are better than one", a: "True"),
        Question(q: "There are 10 commandments in Bible", a: "True")]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer:String) -> Bool {
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }
        else{
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
}

