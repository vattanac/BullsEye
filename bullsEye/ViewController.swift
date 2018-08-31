//
//  ViewController.swift
//  bullsEye
//
//  Created by Vattanac on 8/31/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int=200
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderMove(_ slider: UISlider){
        print("slider is :\(slider.value)")
        currentValue=lroundf(slider.value)
    }
    
    @IBAction func showAlert(){
       
//        make alert controll(POPUP)
        let message = "The value of slider is:\(currentValue)"
        let alert = UIAlertController(title: "Hello world", message: message, preferredStyle: .alert)
        let  action = UIAlertAction(title: "Awsome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

}

