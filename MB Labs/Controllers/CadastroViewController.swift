//
//  CadastroViewController.swift
//  MB Labs
//
//  Created by Convidados on 31/05/22.
//  Copyright © 2022 Convidados. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    @IBAction func register(){
        if(passwordTextField.text != passwordAgainTextField.text || passwordTextField.text == ""){
            print("Password incorreto");
            return;
        }
        
        
        
        print("Password aprovado");
        
    
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
