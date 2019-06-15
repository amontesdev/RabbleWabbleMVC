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
}
