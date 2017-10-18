//
//  ThirdScreenController.swift
//  NewPracticeProject
//
//  Created by Miller, Wyatt on 10/16/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
//

import UIKit

public class ThirdScreenController : UIViewController
{
    
    @IBOutlet weak var buttonOneOutput: UIButton!
    @IBOutlet weak var buttonTwoOutput: UIButton!
    @IBOutlet weak var sliderOutput:    UISlider!
    @IBOutlet weak var imageOutput:     UIImageView!
    
    private lazy var color : ColorTools = ColorTools()
    private var ImageCounter : Int = 0
    
    @IBAction func ButtonOneAction(_ sender: Any) {
    }
    @IBAction func ButtonTwoAction(_ sender: Any) {
    }
    @IBAction func SliderAction(_ sender: Any) {
    }
}
