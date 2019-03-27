//
//  ViewController.swift
//  Chat
//
//  Created by RAFAEL on 3/25/19.
//  Copyright © 2019 RAFAEL. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }
    
    @objc fileprivate func handleLogout(){
        print("Logout Complete")
        
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
}



