//
//  ViewController.swift
//  somethingInteresting
//
//  Created by Donavin Watson on 5/1/20.
//  Copyright © 2020 Don Watsy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var imageSlider: UISlider!
	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var imageLabel: UILabel!
	
	
	var moonPhases: Array = [
		["fullMoon_1.png",     "Full Moon"],
		["wanGibbous_8.png",   "Waning Gibbous"],
		["thirdQuarter_7.png", "Third Quarter"],
		["wanCrescent_6.png",  "Waning Crescent"],
		["newMoon_5.png",      "New Moon"],
		["waxCrescent_4.png",  "Waxing Crescent"],
		["firstQuarter_3.png", "First Quarter"],
		["waxGibbous_2.png",   "Waxing Gibbous"]
	];
	
	var index: Int = 0 {
		didSet {
			updateUI()
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		index = 0; //Start with full moon.
	}
	
	@IBAction func slideChangeImage(_ sender: UISlider) {
		
		index = Int(sender.value)
	}
	
	func updateUI() {
		imageView.image = UIImage(named: moonPhases[index][0]);
		imageLabel.text = moonPhases[index][1];
	}
	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .lightContent;
		
	}
	
}
