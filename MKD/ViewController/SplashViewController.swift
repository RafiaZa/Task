//
//  SplashViewController.swift
//  MKD
//
//  Created by Rafia Zaheer on 12/04/2022.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
            self.performSegue(withIdentifier: "splashToStart", sender: nil)
                })
    }
    

   

}
