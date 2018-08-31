//
//  ViewController.swift
//  bullsEye
//
//  Created by Vattanac on 8/31/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int=0
    var targetValue: Int=0
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        targetValue = Int(arc4random_uniform(100)) + 1
    }

    func startNewRound(){
        targetValue=1+Int(arc4random_uniform(100))
        currentValue=50
        slider.value=Float(currentValue)
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
        let message = "The value of slider is:\(currentValue)\n" +
        "target values is :\(targetValue)"
        let alert = UIAlertController(title: "Hello world", message: message, preferredStyle: .alert)
        let  action = UIAlertAction(title: "Awsome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }

}

