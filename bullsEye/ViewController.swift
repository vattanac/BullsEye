//
//  ViewController.swift
//  bullsEye
//
//  Created by Vattanac on 8/31/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert(){
       
//        make alert controll(POPUP)
        let alert = UIAlertController(title: "Hello world", message: "This is my first App!", preferredStyle: .alert)
        let  action = UIAlertAction(title: "Awsome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

}

