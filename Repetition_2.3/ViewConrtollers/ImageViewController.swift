//
//  ImageViewController.swift
//  Repetition_2.3
//
//  Created by Marat Shagiakhmetov on 12.09.2022.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.fullname
        countryLabel.text = "Country: "
        imageView.image = UIImage(named: user.person.image)
        imageView.layer.borderColor = CGColor(
            red: 10/255,
            green: 10/255,
            blue: 10/255,
            alpha: 1
        )
        imageView.layer.borderWidth = 3
    }
}
