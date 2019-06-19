//
//  SelectQuestionGroupViewController.swift
//  RabbleWabbleMVC
//
//  Created by user156150 on 6/15/19.
//  Copyright © 2019 Andres Montes. All rights reserved.
//

import UIKit

class SelectQuestionGroupViewController: UIViewController{
    
    //MARK: - IBOulets
    @IBOutlet internal var tableView: UITableView!{
        didSet{
            tableView.tableFooterView = UIView()
            
        }
    }
    
    //MARK: - Properties
    public let questionGroups = QuestionGroup.allGroups()
    private var selectedQuestionGroup: QuestionGroup!
}

//MARK: - Extensions

extension SelectQuestionGroupViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionGroups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionGroupCell") as! QuestionGroupCell
        let questionGroup = questionGroups[indexPath.row]
        cell.titleLabel.text = questionGroup.title
        return cell
    }
    
    
}

