//
//  GetStartedViewController.swift
//  MKD
//
//  Created by Rafia Zaheer on 12/04/2022.
//

import UIKit

class GetStartedViewController: UIViewController {

    @IBOutlet weak var GetStartedBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    func updateUI(){
        GetStartedBtn.layer.borderWidth = 1
        GetStartedBtn.layer.borderColor = UIColor.white.cgColor
        GetStartedBtn.layer.cornerRadius = 5
    }

    @IBAction func getStartedTapped(_ sender: Any) {
        
        if let _ = UserDefaults.userToken {
            let vc = HomeViewController.instantiate(type: .dashboard) as! HomeViewController
            navigationController?.pushViewController(vc, animated: true)
        }
        else {
        let vc = LoginViewController.instantiate(type: .main) as! LoginViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    }

}
