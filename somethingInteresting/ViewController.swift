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
		["fullMoon_1.png", "Full Moon"] ,
		["waxGibbous_2.png", "Waxing Gibbous"],
		["firstQuarter_3.png", "First Quarter"],
		["waxCrescent_4.png", "Waxing Crescent"],
		["newMoon_5.png", "New Moon"],
		["wanCrescent_6.png", "Waning Crescent"],
		["thirdQuarter_7.png", "Third Quarter"],
		["wanGibbous_8.png", "Waning Gibbous"]
	];
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		UpdateUI()
		setNeedsStatusBarAppearanceUpdate();
		
	}
	
	
	var Index: Int = 0;
	
	
	@IBAction func slideChangeImage(_ sender: UISlider) {
		
		let value = Int(sender.value)
		imageView.image = UIImage(named: moonPhases[value][0]);
		imageLabel.text = moonPhases[value][1];
		for value in 0..<moonPhases.count {
			
			print(value)
			
		}
	}
	
	
	func UpdateUI(){
		imageView.image = UIImage(named: moonPhases[0][0]);
		imageLabel.text = moonPhases[0][1];
		
		setNeedsStatusBarAppearanceUpdate();
		
	}
	override var preferredStatusBarStyle: UIStatusBarStyle {
	return .lightContent;
	}
}




