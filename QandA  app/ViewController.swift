//
//  ViewController.swift
//  QandA  app
//
//  Created by Judy chen on 2022/1/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    
    var questions = [Question]()
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let question1 = Question(description:"台灣最高的大樓是？", answer: "台北101")
        questions.append(question1)
        let question2 = Question(description: "出現在台幣百元上的人是誰？", answer: "國父孫中山")
        questions.append(question2)
        let question3 = Question(description: "世界最大的哺乳類？", answer: "藍鯨")
        questions.append(question3)
        
        questions.shuffle()
        questionLabel.text = questions[index].description
        print(questions)
    }


    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = questions[index].answer
    }
    
    
    @IBAction func nextQuestion(_ sender: Any) {
        index = index + 1
        if index == questions.count{
            index = 0
        }
            questionLabel.text = questions[index].description
            answerLabel.text = ""
        }
       

    
    
}

