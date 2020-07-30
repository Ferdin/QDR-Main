//
//  SignUpViewController.swift
//  QDR Main
//
//  Created by newuser on 2020-07-29.
//  Copyright © 2020 Ferdin. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var retypePassword: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        setUpElements()
        view.addGestureRecognizer(tap)
        
    }
    
    func setUpElements(){
        //Hide the error label
        errorLabel.alpha = 0
        
        //Style the elements
        Utilities.styleTextField(fullName)
        Utilities.styleTextField(email)
        Utilities.styleTextField(password)
        Utilities.styleTextField(retypePassword)
        Utilities.styleFilledButton(signUpButton)
    }
    
    @IBAction func signUp(_ sender: Any) {
        print("\(String(describing: fullName))");
        print("\(String(describing: email))");
        print("\(String(describing: password))");
        print("\(String(describing: retypePassword))");
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func dismissKeyboard() {
           view.endEditing(true)
       }

}
