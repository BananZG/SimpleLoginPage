//
//  RegistrationTableViewController.swift
//  SimpleLoginPage
//
//  Created by Gan Jun Jie on 18/02/2019.
//  Copyright © 2019 Gan Jun Jie. All rights reserved.
//

import UIKit

class RegistrationTableViewController: UITableViewController {

    @IBOutlet weak var tf_name: UITextField!
    @IBOutlet weak var tf_username: UITextField!
    @IBOutlet weak var tf_password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelAction(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func submitAction(_ sender: Any) {
        // condition checking
        guard let name = tf_name.text, name.count > 0 else {
            self.presentAlert(title: "Warning", message: "Please input Name.")
            return
        }
        guard let username = tf_username.text, username.count > 0 else {
            self.presentAlert(title: "Warning", message: "Please input Username.")
            return
        }
        guard let password = tf_password.text, password.count > 0 else {
            self.presentAlert(title: "Warning", message: "Please input Password.")
            return
        }
        // all passed, present confirmation
        self.presentAlert(title: "Success", message: "User \(username) created.") { [weak self] in
            self?.dismiss(animated: true, completion: nil)
        }
    }
    
    deinit {
        print("Deinitialising RegistrationTableViewController")
    }
    
}
