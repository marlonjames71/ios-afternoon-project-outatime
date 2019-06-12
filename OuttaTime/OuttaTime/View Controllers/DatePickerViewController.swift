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

	@IBOutlet var datePicker: UIDatePicker!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	weak var delegate: DatePickerDelegate?
	
	@IBAction func cancelButtonTapped(_ sender: UIButton) {
		dismiss(animated: true, completion: nil)
	}
	
	@IBAction func doneButtonTapped(_ sender: UIButton) {
		print("done")
		delegate?.destinationDateWasChosen(date: datePicker.date)
		dismiss(animated: true, completion: nil)
		
	}
	
	

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
