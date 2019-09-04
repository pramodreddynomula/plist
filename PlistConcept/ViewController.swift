//
//  ViewController.swift
//  PlistConcept
//
//  Created by Pramod Reddy Nomula on 28/08/2019.
//  Copyright © 2019 Pramod Reddy Nomula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bundlePath = Bundle.main.path(forResource: "Users", ofType: "plist")
        let arrayOfUsers = NSMutableArray(contentsOfFile: bundlePath!)
        
        arrayOfUsers?.add("New User")
        let documents = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        let writePath = (documents as NSString).strings(byAppendingPaths: ["Users.plist"])
        arrayOfUsers?.write(toFile: writePath.first!, atomically: true)

       UserDefaults.standard.setValue(arrayOfUsers, forKey: "Users")
        UserDefaults.standard.set(true, forKey: "isLoggedIn")
        
     //   var users = UserDefaults.standard.value(forKey: "Users") as! Array<String>
       // print(users)
        var isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
        print(isLoggedIn)
        
        AppConstants.isLoggedIn = false
        if (AppConstants.isLoggedIn)
        {
            print("user logged in")
        }else{
            print("user not Logged in")
        }
        //print(arrayOfUsers)
        
        
        let UserDictionary = Bundle.main.path(forResource: "UserDict", ofType: "plist")
        let dictionary = NSDictionary(contentsOfFile: UserDictionary!)
        print(dictionary)
        
        var User = dictionary?.value(forKey: "pramod")
        print(User)
//
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

