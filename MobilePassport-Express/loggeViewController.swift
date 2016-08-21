//
//  loggeViewController.swift
//  MobilePassport-Express
//
//  Created by Sagaya Abdulhafeez on 21/08/2016.
//  Copyright © 2016 sagaya Abdulhafeez. All rights reserved.
//

import UIKit
import SwiftyGif

class loggeViewController: UIViewController {
    @IBOutlet weak var logoutBut: UIButton!

    @IBOutlet weak var back: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let gifmanager = SwiftyGifManager(memoryLimit:20)
        let gif = UIImage(gifName: "lc-landscape")
        self.back.setGifImage(gif)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func logout(sender: AnyObject) {
        
        //Remove the key from NSUsersDefault :)
        
        
    }
    
}
