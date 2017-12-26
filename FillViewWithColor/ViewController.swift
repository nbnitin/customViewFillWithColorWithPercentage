//
//  ViewController.swift
//  FillViewWithColor
//
//  Created by Nitin Bhatia on 26/12/17.
//  Copyright © 2017 Nitin Bhatia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewToFill: ViewToFill!
    
    @IBOutlet weak var lblPercentage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        viewToFill.percentage = 0.5
        lblPercentage.text = "\((0.5 / 10)*1000)%"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderColorFill(_ sender: UISlider) {
        lblPercentage.text = "\((sender.value)*100)%"

        viewToFill.percentage = CGFloat(1 - sender.value)
    }
    
}

