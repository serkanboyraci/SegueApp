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
    
    var myName = " " //ekran acildiginda gosterilesi ve 1VC den ulasilabilmesi amaciyla class icinde myName tanimladik.
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //ekran acildiginda labelda gosterilecek text e myName i esitledik.
        nameLabel.text = myName
        
        
    }
 

}
