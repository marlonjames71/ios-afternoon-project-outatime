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
	var timer = Timer()
	var datePickerVC = DatePickerViewController()
	
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
	
	
	func startTimer() {
		timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: updateSpeed(timer:))
	}
	
	
	func resetTimer() {
		timer.invalidate()
	}
	
	
	func updateSpeed(timer: Timer) {
		if currentSpeed < 88 {
			currentSpeed += 1
			speedLabel.text = "\(currentSpeed) MPH"
		} else {
			speedLabel.text = "\(currentSpeed) MPH"
			currentSpeed = 0
			lastTimeDepartedLabel.text = presentTimeLabel.text
			presentTimeLabel.text = destinationTimeLabel.text
			resetTimer()
		}
	}
	
	
	@IBAction func travelBackButtonTapped(_ sender: UIButton) {
		startTimer()
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let datePickerVC = segue.destination as? DatePickerViewController else { return }
		datePickerVC.delegate = self
	}
	
	
}


extension TimeCircuitsViewController: DatePickerDelegate {
	func destinationDateWasChosen(date: Date) {
		destinationTimeLabel.text = dateFormatter.string(from: date)
		print("Hello")
	}
}


