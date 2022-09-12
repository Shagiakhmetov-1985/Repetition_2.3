//
//  AboutMeViewController.swift
//  Repetition_2.3
//
//  Created by Marat Shagiakhmetov on 12.09.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var userButton: UIButton!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userButton.setTitle(user.person.fullname, for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.user = user
    }
}
