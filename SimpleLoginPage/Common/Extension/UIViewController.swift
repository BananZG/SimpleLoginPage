//
//  UIViewController.swift
//  SimpleLoginPage
//
//  Created by Gan Jun Jie on 18/02/2019.
//  Copyright © 2019 Gan Jun Jie. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentAlert(title:String, message:String) {
        let messageVC = UIAlertController(title: title, message: message , preferredStyle: .alert)
        messageVC.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak messageVC] _ in
            messageVC?.dismiss(animated: true, completion: nil)
        }))
        self.present(messageVC, animated: true, completion: nil)
    }
    func presentAlert(title:String, message:String, callBack:@escaping ()->Void) {
        let messageVC = UIAlertController(title: title, message: message , preferredStyle: .alert)
        messageVC.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak messageVC] _ in
            callBack()
            messageVC?.dismiss(animated: true, completion: nil)
        }))
        self.present(messageVC, animated: true, completion: nil)
    }
}
