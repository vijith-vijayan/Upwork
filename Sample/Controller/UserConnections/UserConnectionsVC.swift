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
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var textFieldHeight: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSegmentControl()
        configureTextfield()
        self.showViewController(sID: "UserList")
    }

    private func configureSegmentControl() {
        
        segmentControl.itemTitles = ["All", "Mutal Connections"]
        segmentControl.useShadow = true
        segmentControl.didSelectItemWith = { (index, title) -> () in
            if index == 0 {
                self.textFieldHeight.constant = 30.0
                self.showViewController(sID: "UserList")
            } else if index == 1{
                self.textFieldHeight.constant = 0.0
                self.showViewController(sID: "mutalConnection")
            }
        }
    }
    
    private func configureTextfield() {
        guard let leftImage = UIImage(named: "magnifying-glass") else {
            return
        }
        searchTextField.setLeftIcon(leftImage)
    }
    
    private func showViewController(sID: String) {
        
        Embedder.embed(
            withIdentifier: sID, // Storyboard ID
            parent: self,
            container: self.containerView){ vc in
                // do things when embed complete
        }
    }

}

