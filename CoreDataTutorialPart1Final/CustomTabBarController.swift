//
//  CustomTabBarController.swift
//  CoreDataTutorialPart1Final
//
//  Created by Vladimir Gutic on 11/26/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
////
//
import UIKit
class  CustumTabBarController: UITabBarController {

override func viewDidLoad () {
    super.viewDidLoad()
    
//        MARK: -Setup View Controller

    
                let photoVC = PhotoVC()
                let navController = UINavigationController(rootViewController: photoVC)
                navController.tabBarItem.title = "Photos"
                navController.tabBarItem.image = UIImage (named: "")

                let profileController = PhotoVC ()
                let secondNavigationController = UINavigationController (rootViewController: profileController)
                secondNavigationController.title = "Profile"
                secondNavigationController.tabBarItem.image = UIImage (named: "image")
    

    viewControllers = [navController, secondNavigationController]

    }

}


