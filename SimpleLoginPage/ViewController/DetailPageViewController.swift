//
//  DetailPageViewController.swift
//  SimpleLoginPage
//
//  Created by Gan Jun Jie on 18/02/2019.
//  Copyright © 2019 Gan Jun Jie. All rights reserved.
//

import UIKit

class DetailPageViewController: UIViewController {

    
    @IBOutlet weak var lbl_username: UILabel!
    
    var username:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lbl_username.text = username ?? "Unknown"
        // Do any additional setup after loading the view.
    }
    @IBAction func returnAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    deinit {
        print("Deinitialising DetailPageViewController")
    }
}
