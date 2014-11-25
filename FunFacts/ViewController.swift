//
//  ViewController.swift
//  FunFacts
//
//  Created by Pete Petrash on 11/24/14.
//  Copyright (c) 2014 Techshed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        var randomColor = colorWheel.randomColor()
        funFactLabel.text = factBook.randomFact()
        
        UIView.animateWithDuration(0.4, animations: {
            self.funFactButton.tintColor = randomColor
            self.view.backgroundColor = randomColor
        })
    }

}

