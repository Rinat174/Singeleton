//
//  SecondViewController.swift
//  SingletonAndDelegate
//
//  Created by Сайфуллин Ринат on 01.08.2022.
//

import UIKit

class SecondViewController: UIViewController {

    
    var session = Session()
    
    @IBOutlet weak var token: UITextField!
    @IBOutlet weak var userId: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

     

        token.text = session.token
        userId.text = String(session.userId)
  
        
    }
    
}
