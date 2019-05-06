//
//  ViewController.swift
//  Sample
//
//  Created by Vijith T.V on 04/05/19.
//  Copyright © 2019 Vijith T.V. All rights reserved.
//

import UIKit

class UserConnectionsVC: BaseVC {

    @IBOutlet weak var segmentControl: TTSegmentedControl!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var userTabelView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSegmentControl()
        configureTextfield()
    }

    private func configureSegmentControl() {
        
        segmentControl.itemTitles = ["All", "Mutal Connections"]
        segmentControl.useShadow = true
        
    }
    
    private func configureTextfield() {
        
        guard let leftImage = UIImage(named: "magnifying-glass") else {
            return
        }
        searchTextField.setLeftIcon(leftImage)
    }

}

