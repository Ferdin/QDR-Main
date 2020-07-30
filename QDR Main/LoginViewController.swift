//
//  LoginViewController.swift
//  QDR Main
//
//  Created by newuser on 2020-07-27.
//  Copyright © 2020 Ferdin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    @IBOutlet weak var topLoginBtn: CustomButton!
    var customButton = CustomButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        
//        setupButtonConstraints()
//        addActionToButton()
    }
    
    @IBAction func loginBtn(_ sender: CustomButton) {
        topLoginBtn.shake()
    }
    func setupButtonConstraints(){
        view.addSubview(customButton)
        customButton.translatesAutoresizingMaskIntoConstraints = false
        customButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        customButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
        customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        if #available(iOS 11.0, *) {
            customButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
        } else {
            // Fallback on earlier versions
        }
    }
    
    func addActionToButton(){
        customButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @objc func buttonTapped(){
        customButton.shake()
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
