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
    
    var imageInt = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBtnEnabled()
    }
    

    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        imageInt -= 1
        backBtnEnabled()
        nextBtnEnabled()
        imageGallery()
    }
    
    
    @IBAction func nextBtnPressed(_ sender: UIButton) {
        
        imageInt += 1
        backBtnEnabled()
        nextBtnEnabled()
        imageGallery()
    }
    
    func imageGallery() {
        
        label.text = "\(imageInt)/6"
        imageView.image = UIImage(named: "Image\(imageInt)")
    }
    
    func backBtnEnabled() {
        if imageInt > 1 {
            backBtn.isEnabled = true
            backBtn.alpha = 1.0
        } else {
            backBtn.isEnabled = false
            backBtn.alpha = 0.25
        }
        
    }
    
    func nextBtnEnabled() {
        if imageInt < 6 {
            nextBtn.isEnabled = true
            nextBtn.alpha = 1.0
        } else {
            nextBtn.isEnabled = false
            nextBtn.alpha = 0.25
        }
        
    }
    
    
}

