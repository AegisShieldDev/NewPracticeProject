//
//  ViewController.swift
//  NewPracticeProject
//
//  Created by Miller, Wyatt on 10/10/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
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
    
    @IBOutlet var firstButton: UIButton!

    @IBAction func firstMethod(_ sender: Any)
    {
        
        firstButton.backgroundColor = createRandomColor()
        view.backgroundColor = createRandomColor()
        firstButton.setTitleColor(createRandomColor(), for: .normal)
    }
    
    private func createRandomColor () -> UIColor
    {
        let newColor    :UIColor
        let redValue    :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let greenValue  :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let blueValue   :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat(1.0))
        
        return newColor
    }


}

