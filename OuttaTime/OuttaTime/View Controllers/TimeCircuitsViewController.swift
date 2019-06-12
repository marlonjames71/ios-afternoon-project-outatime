//
//  ViewController.swift
//  OuttaTime
//
//  Created by Marlon Raskin on 6/12/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class TimeCircuitsViewController: UIViewController {

	var currentSpeed: Int = 0
	
	@IBOutlet var destinationTimeLabel: UILabel!
	@IBOutlet var presentTimeLabel: UILabel!
	@IBOutlet var lastTimeDepartedLabel: UILabel!
	@IBOutlet var speedLabel: UILabel!
	
	
	
	var dateFormatter: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateFormat = "MMM d, yyyy"
		return formatter
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		presentTimeLabel.text = dateFormatter.string(from: Date())
	}
	
	func updateViews() {
		
	}

	@IBAction func unwindToCircuitsViewController(_ sender: UIStoryboardSegue) {
		
	}
	@IBAction func travelBackButtonTapped(_ sender: UIButton) {
	}
	
}

