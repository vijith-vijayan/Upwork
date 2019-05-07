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
    
    lazy var object: [Relations] = []
    
    var finished: (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getDatas()
    }
    
    private func getDatas() {
        fetchRelations { (relations) in
            self.object = relations
            self.userListTabelView.reloadData()
        }
    }
    
    /// Fetch Relations
    ///
    /// - Parameter completion: Array of relations
    func fetchRelations(completion: @escaping ([Relations]) -> ()) {
        
        webservice.request(params: webservice.parameters,
                           header: webservice.header) { (relations, error) in
                            guard error != nil,
                                let r = relations else {
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
        if object.count == 0 {
            tableView.emptyMessage(title: "You don't have any data",
                                   message: "Please try later",
                                   emptyImage: UIImage(named: "database.png")!)
        } else {
            tableView.restoreTableView()
        }
        return object.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "userConnectionCell", for: indexPath) as? UserConnectionCell else {
            fatalError("Cell does not exist in storyboard")
        }
        let relation = object[indexPath.row]
        cell.configureCell(relation: relation)
        return cell
    }
    
}
