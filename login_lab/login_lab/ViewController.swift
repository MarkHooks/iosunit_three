//
//  ViewController.swift
//  login_lab
//
//  Created by Mark on 4/3/19.
//  Copyright © 2019 Mark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }
    }
    
    
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    @IBOutlet weak var forgotUsername: UIButton!
    @IBAction func forgotPasswordact(_ sender: Any) {
      performSegue(withIdentifier: "viewSegue", sender: forgotPassword)
    }
    @IBAction func forgotUsernameact(_ sender: Any) {
        performSegue(withIdentifier: "viewSegue", sender: forgotUsername)
    }
    
    
    
}

