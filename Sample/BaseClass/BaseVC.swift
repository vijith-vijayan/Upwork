//
//  BaseVC.swift
//  Sample
//
//  Created by Vijith T.V on 04/05/19.
//  Copyright © 2019 Vijith T.V. All rights reserved.
//

import UIKit

class BaseVC: UIViewController {
    
    let spinnerView = Spinner()
    
    /// Menu Button
    lazy var menuButton: UIButton = { [unowned self] in
        let button = UIButton(type: .roundedRect)
        button.tintColor = .white
        let menu = UIImage(named: "Menu")
        button.setImage(menu, for: .normal)
        button.addTarget(self, action: #selector(self.menuPressed), for: .touchUpInside)
        return button
    }()
    
    /// BarButtonItem
    lazy var barButtonItem: UIBarButtonItem = { [unowned self] in
        
        let menuBarItem = UIBarButtonItem(customView: menuButton)
        menuBarItem.customView?.translatesAutoresizingMaskIntoConstraints = false
        menuBarItem.customView?.heightAnchor.constraint(equalToConstant: 24).isActive = true
        menuBarItem.customView?.widthAnchor.constraint(equalToConstant: 30).isActive = true
        return menuBarItem
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setNavigationBar()
        // Customize the line width
        spinnerView.circleLayer.lineWidth = 2.0
        // Change the color of the line
        spinnerView.circleLayer.strokeColor = UIColor.orange.cgColor
        // Change the duration of the animation
        spinnerView.animationDuration = 2.5
    }
    
    /// SetUp Navigation bar
    public func setNavigationBar() {
        
        self.navigationController?.navigationBar.barTintColor = .lightBlue
        self.navigationItem.leftBarButtonItem = barButtonItem
        self.navigationController?.navigationBar.isTranslucent = false

    }
    
    func loadSpinner()  {
        
        spinnerView.beginRefreshing()
    }
    
    func hideSpinner() {
        
        spinnerView.endRefreshing()
    }
    
    
    /// Menu Button pressed
    @objc private func menuPressed() {
        print("Side menu pressed")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
