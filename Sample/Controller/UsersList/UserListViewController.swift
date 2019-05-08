//
//  UserListViewController.swift
//  Sample
//
//  Created by Vijith T.V on 05/05/19.
//  Copyright © 2019 Vijith T.V. All rights reserved.
//

import UIKit

class UserListViewController: BaseVC {

    @IBOutlet weak var userListTabelView: UITableView!
    
    /// Webservice
    lazy var webservice: Webservice = {
        return Webservice()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        userListTabelView.rowHeight = 100
        getDatas()
    }
    
    private func getDatas() {
        fetchRelations { (relations) in
            object = relations
            self.userListTabelView.reloadData()
        }
    }
    
    /// Fetch Relations
    ///
    /// - Parameter completion: Array of relations
    func fetchRelations(completion: @escaping ([Relations]) -> ()) {
        
        webservice.request(params: webservice.parameters,
                           header: webservice.header) { (relations, error) in
                            guard let r = relations else {
                                    print("Error")
                                    return
                            }
                            completion(r)
        }
    }
}

extension UserListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        if relations.count == 0 {
            tableView.emptyMessage(title: "Loading your data",
                                   message: "Please wait a moment",
                                   emptyImage: UIImage(named: "high-five.png")!)
        } else {
            tableView.restoreTableView()
        }
        return relations.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "userConnectionCell", for: indexPath) as? UserConnectionCell else {
            fatalError("Cell does not exist in storyboard")
        }
        let relation = relations[indexPath.row]
        cell.configureCell(relation: relation)
        return cell
    }
    
}

extension UserListViewController: UIScrollViewDelegate {

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        // calculates where the user is in the y-axis
        let offsetY = scrollView.contentOffset.y
        let contentHeight = scrollView.contentSize.height
        
        if offsetY > contentHeight - scrollView.frame.size.height {
            
            if object!.count > 10{
                page += 1
                getDatas()
                self.userListTabelView.reloadData()
            }
            
        }
    }

}
