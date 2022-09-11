//
//  EnterViewController.swift
//  Repetition_2.3
//
//  Created by Marat Shagiakhmetov on 09.09.2022.
//

import UIKit

class EnterViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    
    var hello: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "Hi, \(hello ?? "")"
    }
    
}
