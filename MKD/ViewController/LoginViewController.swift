//
//  LoginViewController.swift
//  MKD
//
//  Created by Rafia Zaheer on 12/04/2022.
//

import UIKit
import ApiCall

class LoginViewController: UIViewController {

   
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var securePasswordBtn: UIButton!
    
    @IBOutlet weak var signupBtn: UIButton!
    @IBOutlet weak var forgetPasswordBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.text = "rafiazaheer94@gmail.com"
        passwordTextField.text = "123456"
        self.hideKeyboardWhenTappedAround()
    }
    
    func login() {
        startActivityIndicator()
        let params = ["email":emailTextField.text,"password": passwordTextField.text]
        
        Request.shared.requestApi(LoginClass.self, method: .post, url: "member/api/login" , params: params as [String : Any], isSnakeCase: false) { result in
            switch result {
            case .success(let login):
                let vc = HomeViewController.instantiate(type: .dashboard) as! HomeViewController
                self.navigationController?.pushViewController(vc, animated: true)
                print("Login:",login)
                UserDefaults.userToken = login.data?.access
            case .failure(let error):
                self.showAlert(text: "\(error.localizedDescription)")
                print("Error:",error)
            }
            self.stopActivityIndicator()
        }
    }
    
    @IBAction func loginBtnTapped(_ sender: UIButton) {
        
        login()
      
    }
    
    @IBAction func forgetPasswordTapped(_ sender: UIButton) {
        let vc = VerifyEmailViewController.instantiate(type: .main) as! VerifyEmailViewController
        //className and storyboard Id should be same
        navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func signupBtnTapped(_ sender: UIButton) {
        let vc = SignupViewController.instantiate(type: .main) as! SignupViewController
        //className and storyboard Id should be same
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
    

}
