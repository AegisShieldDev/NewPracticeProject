//
//  SecondScreenController.swift
//  NewPracticeProject
//
//  Created by Miller, Wyatt on 10/12/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
//

import UIKit

public class SecondScreenController : UIViewController
{
    private lazy var color : ColorTools = ColorTools()
    
    public override func viewDidLoad()
    {  
        super.viewDidLoad()
        view.backgroundColor = color.createRandomColor()
    }
}
