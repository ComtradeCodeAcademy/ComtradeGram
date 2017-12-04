//
//  ViewController.swift
//  CoreDataTutorialPart1Final
//
//  Created by Miroslav Mirovic on 11/27/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    var textFieldUserName : UITextField!
    var textFieldPassword : UITextField!
    var button : UIButton!
    
    
 
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
        self.view.backgroundColor = UIColor.blue
        
        textFieldUserName = UITextField.init()
        textFieldUserName.delegate = self
        textFieldUserName.placeholder = "Username"
        textFieldUserName.backgroundColor = UIColor.lightGray
        textFieldUserName.frame = CGRect.init(x: 60, y: 130, width: 300, height: 44)
        textFieldUserName.textAlignment = NSTextAlignment.center
        self.view.addSubview(textFieldUserName)
        
    
        textFieldPassword = UITextField.init()
        textFieldPassword.placeholder = "Password"
        textFieldPassword.isSecureTextEntry = true
        textFieldPassword.returnKeyType = UIReturnKeyType.send
        textFieldPassword.backgroundColor = UIColor.lightGray
        textFieldPassword.frame = CGRect.init(x: 60, y: 180, width: 300, height: 44)
        textFieldPassword.textAlignment = NSTextAlignment.center
        self.view.addSubview(textFieldPassword)
        
        
        button = UIButton.init()
        button.setTitle("Login", for: .normal)
        self.title = "Login"
        button.backgroundColor = UIColor.lightGray
        self.button.addTarget(self, action: #selector(submitLogin(_sende:)),
                              for:.touchUpInside)
        
        button.titleLabel?.textAlignment = NSTextAlignment.center
        button.frame = CGRect.init(x: 100, y: 250, width: 200, height: 44)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(doLogin), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
        
    }
    
    func doLogin(sender: UIButton) {
        print("Added username and pass")
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

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //1. check if email/username text is empty
        //2. check if password is empty
        //3. show alert view controller with message: Missing username/password
        //4. if form is valid, execute segue to photos table view (posts)
        
        textField.resignFirstResponder()
        
        print(textField.text!)
        
        return true
        
    }
    func submitLogin(_sende: Any){
        let photoVC = PhotoVC()
        self.present(photoVC, animated: false, completion: nil)
        
//        self.performSegue(withIdentifier: "openPhotos", sender: nil)
//        print("sent")
    }
    
    
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            print("ok, let's prepare")
//        }
//
    
    }
    



