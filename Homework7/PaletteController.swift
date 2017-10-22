//
//  PaletteController.swift
//  Homework7
//
//  Created by mac on 22.10.2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class PaletteController: UIViewController {
    
    
    @IBOutlet weak var coloredView: UIView!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var GreenLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var blueValueLabel: UILabel!
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    
    
    @IBOutlet weak var transparencyLabel: UILabel!
    
    @IBOutlet weak var transparencySlider: UISlider!
    @IBOutlet weak var transparencyValueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blueValueLabel.text = String(Int(blueSlider.value))
        greenValueLabel.text = String(Int(greenSlider.value))
        redValueLabel.text = String(Int(redSlider.value))
        transparencyValueLabel.text = String(format: "%.3f", Double(transparencySlider.value))
        coloredView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value / 255) , green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1.0)
    }
    
    @IBAction func buttomMinPressed(_ sender: Any) {
        blueSlider.value = 0
        redSlider.value = 0
        greenSlider.value = 0
        coloredView.backgroundColor = UIColor(displayP3Red: 0 / 255, green: 0 / 255, blue: 0 / 255, alpha: 1.0)
        redValueLabel.text = String(Int(redSlider.value))
        greenValueLabel.text = String(Int(greenSlider.value))
        blueValueLabel.text = String(Int(blueSlider.value))
    }
    
    @IBAction func buttonMediumPressed(_ sender: Any) {
        blueSlider.value = 127
        redSlider.value = 127
        greenSlider.value = 127
        coloredView.backgroundColor = UIColor(displayP3Red: 127 / 255, green: 127 / 255, blue: 127 / 255, alpha: 1.0)
        redValueLabel.text = String(Int(redSlider.value))
        greenValueLabel.text = String(Int(greenSlider.value))
        blueValueLabel.text = String(Int(blueSlider.value))
    }
    
    @IBAction func buttonMaxPressed(_ sender: Any) {
        blueSlider.value = 255
        redSlider.value = 255
        greenSlider.value = 255
        coloredView.backgroundColor = UIColor(displayP3Red: 255 / 255, green: 255 / 255, blue: 255 / 255, alpha: 1.0)
        redValueLabel.text = String(Int(redSlider.value))
        greenValueLabel.text = String(Int(greenSlider.value))
        blueValueLabel.text = String(Int(blueSlider.value))
    }
    
    
    @IBAction func greenSliderAction(_ sender: Any) {
        coloredView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value / 255) , green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255) , alpha: 1.0)
        greenValueLabel.text = String(Int(greenSlider.value))
    }
    
    @IBAction func redSliderAction(_ sender: Any) {
        coloredView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value / 255) , green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255) , alpha: 1.0)
        redValueLabel.text = String(Int(redSlider.value))
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        coloredView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value / 255) , green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255) , alpha: 1.0)
        blueValueLabel.text = String(Int(blueSlider.value))
    }
    
    @IBAction func transparencySliderAction(_ sender: Any) {
        coloredView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value / 255) , green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255) , alpha: CGFloat(transparencySlider.value))
        transparencyValueLabel.text = String(format: "%.3f", Double(transparencySlider.value))
    }
}

