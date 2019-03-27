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
        
        if Auth.auth().currentUser?.uid == nil {
            perform(#selector(handleLogout), with: nil, afterDelay: 0)
        }
        
    }
    
    @objc fileprivate func handleLogout(){
        
        do {
            try Auth.auth().signOut()
        } catch let logoutError {
            print(logoutError)
        }
        
        print("Logout Complete")
        
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
}



