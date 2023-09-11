//
//  ViewController.swift
//  SegueApp
//
//  Created by Ali serkan Boyracı  on 4.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = " "
    
    @IBOutlet var firstVCLabel: UILabel!
    
    @IBOutlet var nameTextField: UITextField!
    
    override func viewDidLoad() { //sadece uygulama ilk açıldığında çalışır. dah sonra VC arası geçişte çalışmaz
        super.viewDidLoad()
        print("viewDidLoad function called")
        
    }
    
    //çalışma sırası alttaki şekildedir.
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        nameTextField.text = "" //görmeden siliniyor
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
        //nameTextField.text = "" görüyorsun sonradan siliniyor.
    }
  
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    


    

    @IBAction func nextClicked(_ sender: Any) {
        
        userName = nameTextField.text!
    
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            
            // as
            let destinationVC = segue.destination as! SecondVC
            destinationVC.myName = userName
            
            
        }
    }
    
}

