//
//  OTPVerificationViewController.swift
//  MKD
//
//  Created by Rafia Zaheer on 12/04/2022.
//

import UIKit

class OTPVerificationViewController: UIViewController {

    @IBOutlet weak var verifyBtn: UIButton!
    @IBOutlet weak var firstDigitTextField: UITextField!
    
    @IBOutlet weak var secondDigitTextField: UITextField!
    
    @IBOutlet weak var thirdDigitTextField: UITextField!
    @IBOutlet weak var fourthDigitTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func verifyBtnTapped(_ sender: Any) {
        let vc = HomeViewController.instantiate(type: .dashboard) as! HomeViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
