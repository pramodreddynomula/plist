//
//  AppConstants.swift
//  PlistConcept
//
//  Created by Pramod Reddy Nomula on 28/08/2019.
//  Copyright © 2019 Pramod Reddy Nomula. All rights reserved.
//

import Foundation

struct AppConstants {
    
    static var deviceToken: String {
        get {
            return UserDefaults.standard.string(forKey: "deviceToken") ?? String()
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "deviceToken")
            UserDefaults.standard.synchronize()
        }
    }

    static var isLoggedIn : Bool {
        get {
            return UserDefaults.standard.bool(forKey: "isLoggedIn")
        }
        set{
            UserDefaults.standard.set(newValue, forKey: "isLoggedIn")
            UserDefaults.standard.synchronize()
        }
    }


}
