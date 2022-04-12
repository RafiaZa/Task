//
//  PasswordResetViewController.swift
//  MKD
//
//  Created by Rafia Zaheer on 12/04/2022.
//

import UIKit
import ApiCall

class VerifyEmailViewController: UIViewController {

    @IBOutlet weak var emailVerifyTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func verifyEmail() {
        startActivityIndicator()
        let params = ["email":emailVerifyTextfield.text]
        
        Request.shared.requestApi(VerifyAccount.self, method: .post, url: "member/api/verify-account" , params: params as [String : Any]) { result in
            switch result {
            case .success(let login):
                let vc = OTPVerificationViewController.instantiate(type: .main) as! OTPVerificationViewController
                self.navigationController?.pushViewController(vc, animated: true)
                print("Verified:",login)
            case .failure(let error):
                self.showAlert(text: "\(error.localizedDescription)")
                print("Error:",error)
            }
            self.stopActivityIndicator()
        }
    }
    
    
    @IBAction func emailVerifyTapped(_ sender: Any) {
        
        verifyEmail()
    }
    

}
