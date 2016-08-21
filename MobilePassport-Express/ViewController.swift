//
//  ViewController.swift
//  MobilePassport-Express
//
//  Created by Sagaya Abdulhafeez on 21/08/2016.
//  Copyright © 2016 sagaya Abdulhafeez. All rights reserved.
//

import UIKit
import SwiftyGif

class ViewController: UIViewController {

    @IBOutlet weak var gifImageView: UIImageView!
    
    @IBOutlet weak var loginButt: UIButton!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let gifmanager = SwiftyGifManager(memoryLimit:20)
        let gif = UIImage(gifName: "railway")
        self.gifImageView.setGifImage(gif)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    func segue(){
        self.performSegueWithIdentifier("LOGGED", sender: self)
    }

    @IBAction func login(sender: AnyObject) {
        
        if let username = username.text where username != "", let password = password.text where password != ""{
            
          //  Dataservice.ds.callSH(username, password: password, f: segue())
            
            segue()
            
        }else{
            let alertView = UIAlertController(title: "UWOTM8", message: "Fam, what you tryna pull?", preferredStyle: .Alert)
            let OK = UIAlertAction(title: "Is it 2 l8 2 say sorry", style: .Default, handler: nil)
            alertView.addAction(OK)
            self.presentViewController(alertView, animated: true, completion: nil);

        }
        
    }

}

