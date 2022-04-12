//
//  SignupViewController.swift
//  MKD
//
//  Created by Rafia Zaheer on 12/04/2022.
//

import UIKit
import ApiCall

class SignupViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var codeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func signUp() {
        startActivityIndicator()
        let params = ["first_name":firstNameTextField.text,"last_name":lastNameTextField.text,"email":emailTextField.text,"password": passwordTextField.text,"code":codeTextField.text]
        
        Request.shared.requestApi(Signup.self, method: .post, url: "member/api/register" , params: params as [String : Any]) { result in
            switch result {
            case .success(let Signup):
                let vc = HomeViewController.instantiate(type: .dashboard) as! HomeViewController
                self.navigationController?.pushViewController(vc, animated: true)
                print("SignUP:",Signup)
            case .failure(let error):
                self.showAlert(text: "\(error.localizedDescription)")
                print("Error:",error)
            }
            self.stopActivityIndicator()
        }
    }
    
    
    @IBAction func signupTapped(_ sender: Any) {
        signUp()
    }
    

}
