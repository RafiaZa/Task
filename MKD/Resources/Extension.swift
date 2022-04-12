//
//  Extension.swift
//  MKD
//
//  Created by Rafia Zaheer on 12/04/2022.
//

import UIKit
enum StoryBoard : String {
    case main = "Main"
    case dashboard = "Dashboard"
    
}


extension UIViewController {
    
    
    static func instantiate(type : StoryBoard) -> UIViewController {
        let id = String(describing: self)
        let storyboards = UIStoryboard(name: type.rawValue, bundle: nil)
        return storyboards.instantiateViewController(withIdentifier: id)
    }
}

extension UserDefaults {
    private static let USERTOKEN = "usertoken"
    static var userToken : String? {
        get {
             UserDefaults.standard.object(forKey: USERTOKEN) as? String
        }
        
        set {
            guard let value = newValue else {
                UserDefaults.standard.removeObject(forKey: USERTOKEN)
                UserDefaults.standard.synchronize()
                return
            }
            UserDefaults.standard.set(value,forKey: USERTOKEN)
                UserDefaults.standard.synchronize()
        }
    }
    
    
    
    
}

