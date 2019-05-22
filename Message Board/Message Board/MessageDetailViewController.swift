//
//  MessageDetailViewController.swift
//  Message Board
//
//  Created by Jordan Davis on 5/22/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class MessageDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - Actions
    
    @IBAction func send(_ sender: Any) {
    }
    

    
    
    //MARK: - Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextView: UITextView!
    

}
