//
//  ViewController.swift
//  SegueApp
//
//  Created by Ali serkan Boyracı  on 4.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = " " //en basta bir userName tanimlayarak class icindeki hereksin
    // ulasmasini sagladik.
    
    @IBOutlet var firstVCLabel: UILabel!
    
    @IBOutlet var nameTextField: UITextField!
    
    override func viewDidLoad() { //sadece uygulama ilk açıldığında çalışır. dah sonra VC arası geçişte çalışmaz
        super.viewDidLoad()
        print("viewDidLoad function called")
        
    }
    //Lifecycle
    //çalışma sırası alttaki şekildedir.
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
             nameTextField.text = "" //görmeden siliniyor
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
        //nameTextField.text = "" //görüyorsun sonradan siliniyor.
    }
  
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    


    

    @IBAction func nextClicked(_ sender: Any) {
        
        userName = nameTextField.text!
        // nextclicked yapildiginda segue olmadan once userName i nameTextfieldde girilen degere esitledik
    
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            
            // as-Casting
            // destinationVC yi segue destinationi ama secondVC destinationi olarak tanimladik.
            let destinationVC = segue.destination as! SecondVC
            
            // bu sayede destinationVC. yapinca 2.VC deki tum degiskenlere ulasabildik.
            destinationVC.myName = userName
            // segue olduktan sonra 2.VC de ulastigimiz myName degiskenine userName
            // degiskenini tanimladik.
            
        }
    }
    
}

