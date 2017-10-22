//
//  GalleryController.swift
//  Homework7
//
//  Created by mac on 22.10.2017.
//  Copyright © 2017 mac. All rights reserved.
//


import UIKit

class GalleryController : UIViewController {
    
    @IBOutlet weak var view1Image: UIView!
    
    @IBOutlet weak var view2Image: UIView!
    
    @IBOutlet weak var view3Image: UIView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttom1Pressed(_ sender: Any) {
        view1Image.isHidden = true
    }
    @IBAction func buttom2Pressed(_ sender: Any) {
        view2Image.isHidden = true
    }
    @IBAction func buttom3Pressed(_ sender: Any) {
        view3Image.isHidden = true
    }
    
    @IBAction func buttomShowAllPressed(_ sender: Any) {
        view1Image.isHidden = false
        view2Image.isHidden = false
        view3Image.isHidden = false
    }
}

