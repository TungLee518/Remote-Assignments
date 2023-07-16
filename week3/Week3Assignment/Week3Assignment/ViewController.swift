//
//  ViewController.swift
//  Week3Assignment
//
//  Created by 李童 on 2023/7/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logInSignOutSegmentedControl: UISegmentedControl!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var executeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //logInSignOutSegmentedControl.selectedSegmentTintColor = UIColor.white
        logInSignOutSegmentedControl.backgroundColor = UIColor.black
        logInSignOutSegmentedControl.tintColor = UIColor.white
        logInSignOutSegmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: UIControl.State.normal)
        logInSignOutSegmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: UIControl.State.selected)
        logInSignOutSegmentedControl.selectedSegmentIndex = 0
        initialLogInSegment()
    }
    
    @IBAction func segmentControllClick(_ sender: Any) {
        if (logInSignOutSegmentedControl.selectedSegmentIndex == 0) {
            initialLogInSegment()
        } else if (logInSignOutSegmentedControl.selectedSegmentIndex == 1) {
            initialSignInSegment()
        }
    }
    
    func initialLogInSegment() {
        checkLabel.textColor = .gray
        checkTextField.isUserInteractionEnabled = false
        checkTextField.backgroundColor = .gray
        checkTextField.text = ""
        executeButton.setTitle("Log In", for: .normal)
    }
    
    func initialSignInSegment() {
        checkLabel.textColor = .black
        checkTextField.isUserInteractionEnabled = true
        checkTextField.backgroundColor = .white
        executeButton.setTitle("Sign Up", for: .normal)
    }


    @IBAction func submitButton(_ sender: Any) {
        var title = "Error"
        var message = "Not thing"
        
        if accountTextField.text == "" {
            message = "Account should not be empty."
        } else if passwordTextField.text == "" {
            message = "Password should not be empty."
        } else if checkTextField.isUserInteractionEnabled && checkTextField.text == "" {
            message = "Check password should not be empty."
        } else {
            if logInSignOutSegmentedControl.selectedSegmentIndex == 0 {
                if accountTextField.text == "appworks_school" && passwordTextField.text == "1234" {
                    title = "Success"
                    message = "Log in success"
                } else {
                    message = "Log in fail"
                }
            } else if logInSignOutSegmentedControl.selectedSegmentIndex == 1 {
                if passwordTextField.text == checkTextField.text {
                    title = "Success"
                    message = "Sign in success"
                } else {
                    message = "Sign up fail"
                }
            }
        }
        
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: { [self]
            action in
            if self.logInSignOutSegmentedControl.selectedSegmentIndex == 0 {
                self.initialLogInSegment()
            } else {
                self.initialSignInSegment()
            }
            
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}

