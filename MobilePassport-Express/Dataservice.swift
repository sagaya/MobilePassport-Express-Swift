//
//  Dataservice.swift
//  MobilePassport-Express
//
//  Created by Sagaya Abdulhafeez on 21/08/2016.
//  Copyright © 2016 sagaya Abdulhafeez. All rights reserved.
//

import Foundation

class Dataservice{
    
    static let ds = Dataservice()
    
    func callSH(username: String,password: String,f:()){
        let url = NSURL(string: "http://exampleapp.herokuapp.com")
        let request = NSMutableURLRequest(URL: url!)
        request.HTTPMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        
        var params = ["first_name":username, "last_name":password] as Dictionary<String, String>
        var err: NSError?
        do{
            var json2 = try NSJSONSerialization.dataWithJSONObject(params, options: .PrettyPrinted)
            request.HTTPBody = json2
            
        }catch{
            print("err")
        }
        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        let task = session.dataTaskWithRequest(request) { (data, response, error) in
            if error != nil{
                print("error1")
            }
            do{
                var json = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)
                
                let tk:String = json["token"] as! String
                NSUserDefaults.standardUserDefaults().setValue(tk, forKey: "token")
                
            }catch{
                print("error2")
            }
            
            if let httprespnse = response as? NSHTTPURLResponse{
                print(httprespnse.statusCode)
                if httprespnse.statusCode == 200{
                    
                    //SAVE THE USER INFO TO COREDATA
                    //let app = UIApplication.sharedApplication().delegate as! AppDelegate
                    //let context = app.managedObjectContext
                    
                    dispatch_async(dispatch_get_main_queue()) {
                        f
                    }
                    //SAVE THE KEY 1 TO THE DISK IF USER IS LOGGED IN
                    NSUserDefaults.standardUserDefaults().setValue(1, forKey: "Logged")
                }
                
            }
            
        }
        task.resume()
    }

    
}