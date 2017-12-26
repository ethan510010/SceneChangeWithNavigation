//
//  ViewController.swift
//  SceneChangeWithNavigation
//
//  Created by EthanLin on 2017/12/26.
//  Copyright © 2017年 EthanLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextfield: UITextField!
    
    
    @IBAction func goView2(_ sender: UIButton) {
        if let myInput = myTextfield.text{
            performSegue(withIdentifier: "GoView2", sender: Int(myInput))
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoView2"{
            if let secondViewController = segue.destination as? SecondViewController{
                if let okInt = sender as? Int{
                    secondViewController.infoFromViewOne = okInt
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

