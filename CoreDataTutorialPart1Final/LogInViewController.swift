//
//  LogInViewController.swift
//  CoreDataTutorialPart1Final
//
//  Created by Vladimir Gutic on 11/27/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {

    var label : UILabel!
    var textFieldUserName : UITextField!
    var textFieldPassword : UITextField!
    
    var counter = 0
    
    var labelbtn : UILabel!
    var button : UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Log In"
        
        let view = UIView()
        view.backgroundColor = .green
        
        labelbtn = UILabel()
        
        button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.tintColor = .black
        button.backgroundColor = UIColor.red
        button.titleLabel?.textAlignment = NSTextAlignment.center
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(doLogin), for: .touchUpInside)
        
        view.addSubview(labelbtn)
        view.addSubview(button)
        

        
        textFieldUserName = UITextField()
        textFieldUserName.borderStyle = .roundedRect
        textFieldUserName.placeholder = "Enter username"
        view.addSubview(textFieldUserName)
        textFieldUserName.textAlignment = NSTextAlignment.center
        
        textFieldPassword = UITextField()
        textFieldPassword.borderStyle = .roundedRect
        textFieldPassword.placeholder = "Enter password"
        view.addSubview(textFieldPassword)
        textFieldPassword.isSecureTextEntry = true
        textFieldPassword.textAlignment = NSTextAlignment.center
        
        label = UILabel()
        view.addSubview(label)
        
        self.view = view
        textFieldUserName.frame =  CGRect.init(x: 10, y: 130, width: 390, height: 44)
        self.view.addSubview(textFieldUserName)
        textFieldPassword.frame =  CGRect.init(x: 10, y: 180, width: 390, height: 44)
        self.view.addSubview(textFieldPassword)
        
        button.frame = CGRect.init(x: 120, y:240, width: 150, height: 44)
        self.view.addSubview(button)
        
        
        
    }
        func doLogin (sender: UIButton!) {
            print("User is \(textFieldUserName.text!) and password is \(textFieldPassword.text!)")
        
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
