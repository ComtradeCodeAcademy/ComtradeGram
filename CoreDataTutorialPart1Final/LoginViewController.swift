//
//  LoginViewController.swift
//  CoreDataTutorialPart1Final
//
//  Created by Tijana Gojkovic on 11/27/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var button : UIButton!
    var textFieldUser : UITextField!
    var textFieldPass : UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        
        
        textFieldUser = UITextField.init()
        textFieldUser.placeholder = "Username"
        textFieldUser.backgroundColor = UIColor.white
        textFieldUser.frame =  CGRect.init(x: 60, y: 130, width: 300, height: 44)
        textFieldUser.borderStyle = .roundedRect
        self.view.addSubview(textFieldUser)
        textFieldUser.textAlignment = NSTextAlignment.center
        
        textFieldPass = UITextField.init()
        textFieldPass.placeholder = "Password"
        textFieldPass.backgroundColor = UIColor.white
        textFieldPass.frame = CGRect.init(x: 60, y: 180, width: 300, height: 44)
        textFieldPass.borderStyle = .roundedRect
        view.addSubview(textFieldPass)
        textFieldPass.textAlignment = NSTextAlignment.center
        textFieldPass.isSecureTextEntry = true
        
        button = UIButton(type: .system)
        button.frame = CGRect.init(x: 100, y: 250, width: 200, height: 44)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor.white
        self.title = "Login"
        button.titleLabel?.textAlignment = NSTextAlignment.center
        self.view.addSubview(button)
        button.layer.cornerRadius = 5.0
        button.addTarget(self, action: #selector(doLogin), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
    }
    
    func doLogin(sender: UIButton!) {
        print("Password for \(textFieldUser.text!) is \(textFieldPass.text!)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
