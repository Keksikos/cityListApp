//
//  DetailViewController.swift
//  cityListApp
//
//  Created by Вадим Семёнов on 22.07.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var cityTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: cityTitle)
        label.text = cityTitle
        label.numberOfLines = 0
    }
    
}
