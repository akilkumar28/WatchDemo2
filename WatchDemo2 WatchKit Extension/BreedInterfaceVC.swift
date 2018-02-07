//
//  BreedInterfaceVC.swift
//  WatchDemo2 WatchKit Extension
//
//  Created by AKIL KUMAR THOTA on 2/6/18.
//  Copyright © 2018 AKIL KUMAR THOTA. All rights reserved.
//

import UIKit
import WatchKit

class BreedInterfaceVC: WKInterfaceController {

    @IBOutlet var dogName: WKInterfaceLabel!
    @IBOutlet var age: WKInterfaceLabel!
    @IBOutlet var mass: WKInterfaceLabel!
    @IBOutlet var hypo: WKInterfaceLabel!
    @IBOutlet var temperament: WKInterfaceLabel!
    
    @IBOutlet var imageview: WKInterfaceImage!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
        if let dog = context as? [String:String] {
            dogName.setText(dog["name"])
            age.setText(dog["life"])
            mass.setText(dog["mass"])
            hypo.setText(dog["hypo"])
            imageview.setImageNamed(dog["image"])
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    

    
}
