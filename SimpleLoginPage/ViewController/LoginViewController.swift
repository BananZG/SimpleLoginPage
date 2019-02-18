//
//  LoginViewController.swift
//  SimpleLoginPage
//
//  Created by Gan Jun Jie on 18/02/2019.
//  Copyright © 2019 Gan Jun Jie. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tf_username: UITextField!
    @IBOutlet weak var tf_password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func signIn(_ sender: Any) {
        // condition checking
        guard let username = tf_username.text, username.count > 0 else {
            self.presentAlert(title: "Warning", message: "Please input Username.")
            return
        }
        guard let password = tf_password.text, password.count > 0 else {
            self.presentAlert(title: "Warning", message: "Please input Password.")
            return
        }
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "DetailPageViewController") as! DetailPageViewController
        controller.username = username
        self.present(controller, animated: true, completion: nil)
    }
    
    deinit {
        print("Deinitialising LoginViewController")
    }
}

