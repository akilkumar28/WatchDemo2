//
//  InterfaceController.swift
//  WatchDemo2 WatchKit Extension
//
//  Created by AKIL KUMAR THOTA on 2/6/18.
//  Copyright © 2018 AKIL KUMAR THOTA. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    //MARK:- IBOutlets
    
    @IBOutlet var myTableView: WKInterfaceTable!
    
    
    let dogs = [
        ["name": "labrador",
         "life": "20yrs",
         "hypo": "NO",
         "mass": "40Kg",
         "image": "Labrador Retriever"],
        ["name": "Beagle",
         "life": "30yrs",
         "hypo": "NO",
         "mass": "40Kg",
         "image": "Beagle"],
        ["name": "Dachsund",
         "life": "20yrs",
         "hypo": "NO",
         "mass": "40Kg",
         "image": "Dachsund"],
        ["name": "Siberian Husky",
         "life": "20yrs",
         "hypo": "NO",
         "mass": "40Kg",
         "image": "Siberian Husky"]
    ]
    
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        loadData()
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func loadData(){
        
        myTableView.setNumberOfRows(dogs.count, withRowType: "cell")
        
        for (idx,dog) in dogs.enumerated() {
            if let row = myTableView.rowController(at: idx) as? IndexRowType {
                row.nameLbl.setText(dog["name"])
            }
        }

    }

}
