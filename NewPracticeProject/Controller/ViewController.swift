//
//  ViewController.swift
//  NewPracticeProject
//
//  Created by Miller, Wyatt on 10/10/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let redValue     :CGFloat = CGFloat (0)
    let greenValue   :CGFloat = CGFloat (0)
    let blueValue    :CGFloat = CGFloat (0)

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
    
    @IBOutlet weak var slideRainbow: UISlider!
    
    @IBAction func slideMethod(_ sender: Any)
    {
        view.backgroundColor = rainbowSlide(val: slideRainbow.value)
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
    
    private func rainbowSlide (val: Float) -> UIColor
    {
        let rainbowColor :UIColor
        
        if (val < 33)
        {
            let redValue = redValue + 7.5
        }
        if (val > 33 && val < 66)
        {
            let greenValue = greenValue + 7.5
            let redValue = redValue - 7.5
        }
        if (val > 66)
        {
            let blueValue = blueValue + 7.5
            let greenValue = greenValue + 7.5
        }
        
        rainbowColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat(1.0))
        
        return rainbowColor
    }


}

