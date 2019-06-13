//
//  DatePickerViewController.swift
//  OuttaTime
//
//  Created by Marlon Raskin on 6/12/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

protocol DatePickerDelegate: AnyObject {
	func destinationDateWasChosen(date: Date)
}

class DatePickerViewController: UIViewController {

	weak var delegate: DatePickerDelegate?
	@IBOutlet var datePicker: UIDatePicker!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	
	@IBAction func cancelButtonTapped(_ sender: UIButton) {
		dismiss(animated: true, completion: nil)
	}
	
	
	@IBAction func doneButtonTapped(_ sender: UIButton) {
		print("done")
		delegate?.destinationDateWasChosen(date: datePicker.date)
		dismiss(animated: true, completion: nil)
	}
}
