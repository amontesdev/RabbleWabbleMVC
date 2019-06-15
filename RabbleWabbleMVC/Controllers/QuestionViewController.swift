//
//  ViewController.swift
//  RabbleWabbleMVC
//
//  Created by user156150 on 6/10/19.
//  Copyright © 2019 Andres Montes. All rights .
//

import UIKit

class QuestionViewController: UIViewController {
    
    //MARK: - Vars
    public var questionGroup = QuestionGroup.basicPhrases()
    public var questionIndex = 0
    public var correctCount = 0
    public var incorrectCount = 0
    public var questionView: QuestionView!{
        guard isViewLoaded else {
            return nil
        }
        return (view as! QuestionView)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        showQuestions()
    }
    
    //MARK: - IBActions and functions
    private func showQuestions(){
        
        let question = questionGroup.questions?[questionIndex]
        
        questionView.answerLabel.text = question?.answer
        questionView.hint.text = question?.hint
        questionView.prompt.text = question?.prompt
        
        questionView.answerLabel.isHidden = false
        questionView.hint.isHidden = false
    }
    
    @IBAction func toggleAnswerLabels(_ sender: Any){
        questionView.answerLabel.isHidden = !questionView.answerLabel.isHidden
        questionView.hint.isHidden = !questionView.hint.isHidden
    }
    private func showNextQuestion(){
        questionIndex += 1
        guard  questionIndex < questionGroup.questions?.count ?? 0 else {
            return
        }
        showQuestions()
    }
    @IBAction func handleCorrect(_ sender:Any){
        correctCount += 1
        questionView.correctCountLabel.text = "\(correctCount)"
        showNextQuestion()
    }
    @IBAction func handleIncorrect(_ sender:Any){
        incorrectCount += 1
        questionView.incorrectCountLabel.text = "\(incorrectCount)"
        showNextQuestion()
        
    }


}

