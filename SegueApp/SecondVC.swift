//
//  SecondVC.swift
//  SegueApp
//
//  Created by Ali serkan Boyracı  on 4.09.2022.
//

import UIKit

class SecondVC: UIViewController {
    @IBOutlet var SecondVCLabel: UILabel!
    
    @IBOutlet var nameLabel: UILabel!
    
    var myName = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
        
    }
 

}
