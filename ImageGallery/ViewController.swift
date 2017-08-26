//
//  ViewController.swift
//  ImageGallery
//
//  Created by Sujanth Sebamalaithasan on 27/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var label: UILabel!
    
    var imageArray = ["Image1", "Image2", "Image3", "Image4", "Image5", "Image6"]
    var currentImage = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBtn.isEnabled = false
        backBtn.alpha = 0.25
        imageView.image = UIImage(named: "\(imageArray[currentImage])")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backBtnPressed(_ sender: UIButton) {
        if currentImage > 0 {
            backBtn.isEnabled = true
            currentImage -= 1
            imageView.image = UIImage(named: "\(imageArray[currentImage])")
        } else {
            backBtn.isEnabled = false
            backBtn.alpha = 0.25
        }
        
    }
    
    
    @IBAction func nextBtnPressed(_ sender: UIButton) {
    }
    
}

