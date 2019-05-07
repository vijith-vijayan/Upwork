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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSegmentControl()
        configureTextfield()
    }

    private func configureSegmentControl() {
        
        segmentControl.itemTitles = ["All", "Mutal Connections"]
        segmentControl.useShadow = true
        segmentControl.didSelectItemWith = { (index, title) -> () in
            if index == 0 {
                Embedder.embed(
                    withIdentifier: "UserList", // Storyboard ID
                    parent: self,
                    container: self.containerView){ vc in
                        // do things when embed complete
                }
            }
        }
    }
    
    private func configureTextfield() {
        guard let leftImage = UIImage(named: "magnifying-glass") else {
            return
        }
        searchTextField.setLeftIcon(leftImage)
    }

}

