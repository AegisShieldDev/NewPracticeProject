//
//  ThirdScreenController.swift
//  NewPracticeProject
//
//  Created by Miller, Wyatt on 10/16/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
//

import UIKit
import AVFoundation

public class ThirdScreenController : UIViewController
{
    
    @IBOutlet weak var buttonOneOutput: UIButton!
    @IBOutlet weak var buttonTwoOutput: UIButton!
    @IBOutlet weak var sliderOutput:    UISlider!
    @IBOutlet weak var imageOutput:     UIImageView!
    @IBOutlet weak var playPauseOutput: UIButton!
    
    private lazy var color : ColorTools = ColorTools()
    private var imageCounter : Int = 0
    private var soundPlayer : AVAudioPlayer?
    
    public override func viewDidLoad()
    {
        view.backgroundColor = color.createRandomColor()
        loadAudioFile()
    }
    @IBAction func ButtonOneAction(_ sender: Any)
    {
        //Image Button
        changeImage()
        view.backgroundColor = color.createRandomColor()
    }
    @IBAction func ButtonTwoAction(_ sender: Any)
    {
        if(imageCounter < 0)
        {
            imageCounter = 2
        }
        if(imageCounter == 2)
        {
            imageOutput.image = UIImage(named: "ImageThree")
        }
        else if(imageCounter == 1)
        {
            imageOutput.image = UIImage(named: "ImageTwo")
        }
        else
        {
            imageOutput.image = UIImage(named: "ImageOne")
        }
        
        imageCounter -= 1
    }
    @IBAction func SliderAction(_ sender: Any)
    {
    }
    private func changeImage() -> Void
    {
        if(imageCounter > 2)
        {
            imageCounter = 0
        }
        if(imageCounter == 0)
        {
            imageOutput.image = UIImage(named: "ImageOne")
        }
        else if(imageCounter == 1)
        {
            imageOutput.image = UIImage(named: "ImageTwo")
        }
        else
        {
            imageOutput.image = UIImage(named: "ImageThree")
        }
        
        imageCounter += 1
    }
    private func loadAudioFile() -> Void
    {
        if let soundURL = NSDataAsset(name: "Quinn")
        {
            do
            {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
                sliderOutput.maximumValue = Float ((soundPlayer?.duration)!)
                //Timer.scheduledTimer(withTimeInterval: TimeInterval: 0.2, target: self, selector:
                    //(#selector(self.updateSlider)), userInfo: nil, repeats: true)
                
            }
        }
    }

}
