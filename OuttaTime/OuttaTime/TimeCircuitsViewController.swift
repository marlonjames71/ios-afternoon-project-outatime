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
	
	
	
	
	var dateFormatter: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateFormat = "EEE, MMM d, yyyy"
		return formatter
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func unwindToCircuitsViewController(_ sender: UIStoryboardSegue) {
		
	}

}

