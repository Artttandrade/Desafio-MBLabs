//
//  ViewController.swift
//  MB Labs
//
//  Created by Convidados on 27/05/22.
//  Copyright © 2022 Convidados. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let emailTest: String = "adsa@gmail.com";
    let passwordTest: String = "1234";
    
    @IBOutlet var emailTextField: UITextField?;
    @IBOutlet var passwordTextField: UITextField?;
    
    @IBAction func auth(){
        guard let email = emailTextField?.text else {
            return;
        }
        guard let password = passwordTextField?.text else {
            return;
        }
        
        if (email == email && password == passwordTest) {
            print("Corret credentials");
            let tabNavigationController = ListEventsViewController();
            // let tabNavigationController = UITabBarController();
            
            navigationController?.pushViewController(tabNavigationController, animated: true)
        } else {
            print("Wrong credentials");
            
            return;
        }
    }
    //@IBOutlet var currentValueTextField: UITextField?;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

