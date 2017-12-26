//
//  SecondViewController.swift
//  SceneChangeWithNavigation
//
//  Created by EthanLin on 2017/12/26.
//  Copyright © 2017年 EthanLin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var infoFromViewOne:Int?

    var sceneArray = ["scene1","scene2","scene3","scene4","scene5","scene6","scene7","scene8","scene9","scene10"]
    
    @IBOutlet weak var myImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let okInfo = infoFromViewOne{
             myImageView.image = UIImage(named: sceneArray[okInfo-1])
        }
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
