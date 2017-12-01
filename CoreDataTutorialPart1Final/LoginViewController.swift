//
//  LoginViewController.swift
//  CoreDataTutorialPart1Final
//
//  Created by Vera  Sercel on 11/27/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    var label : UILabel!
    var label2 : UILabel!
    var textField1 : UITextField!
    var textField2 : UITextField!
    var button : UIButton!

    override func viewDidLoad() {
        
        
        let view = UIView()
        self.title = "Login"
        view.backgroundColor = .orange
        
        textField1 = UITextField()
        textField1.borderStyle = .roundedRect
        textField1.text = "Username"
        view.addSubview(textField1)
        textField1.delegate = self
        
        textField2 = UITextField()
        textField2.borderStyle = .roundedRect
        textField2.text = "Password"
        textField2.frame = CGRect.init(x: 15, y: 80, width: 343, height: 30)
        textField2.isSecureTextEntry = true
        view.addSubview(textField2)
        textField2.delegate = self
        textField2.returnKeyType = UIReturnKeyType.send
        
        button = UIButton.init(frame: CGRect.init(x: 130, y: 100, width: 100, height: 100))
        //button.frame = CGRect.init(x: 30, y: 100, width: 50, height: 30)
//        button.backgroundColor = UIColor.white
        button.setTitle("Title", for: UIControlState.normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(doLogin), for: .touchUpInside)
        
        
        
        label = UILabel()
        view.addSubview(label)
        
        label2 = UILabel()
        view.addSubview(label2)
        
        
        
        self.view = view
        
        textField1.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            textField1.topAnchor.constraint(equalTo: margins.topAnchor, constant: 20),
            textField1.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            textField1.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            
            label.leadingAnchor.constraint(equalTo: textField1.leadingAnchor),
            label.topAnchor.constraint(equalTo: textField1.bottomAnchor, constant: 10),
            ])
        
        // Events
        
        //textField.addTarget(self, action: #selector(updateLabel), for: UIControlEvents.editingChanged)
        

    }
    
    @objc func updateLabel() {
        self.label.text = textField1.text
    



        // Do any additional setup after loading the view.
        //self.title = "Login"
    


//    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //func doLogin (sender: Any) {
        
        //print("password for \(textField1.text!)is \(textField2.text!)")
        
   // }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //if textField > 0 && textField2 > 0
        
       textField.resignFirstResponder()
        
        self.doLogin(sender: textField)
        
        return true
    }
    
    func doLogin (sender: Any){
        
        let photoVC = PhotoVC()
        self.present(photoVC, animated: true, completion: nil)
        //self.performSegue(withIdentifier: "openPhotos", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print ("ok, let's prepare")
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
