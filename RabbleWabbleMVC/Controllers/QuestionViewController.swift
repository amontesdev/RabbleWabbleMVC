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
        
        questionView.answerLabel.isHidden = true
        questionView.hint.isHidden = true
    }


}

