//
//  DetailViewController.swift
//  SwiftySheetsDemo
//
//  Created by Agnes Vasarhelyi on 03/07/16.
//  Copyright © 2016 Agnes Vasarhelyi. All rights reserved.
//

import UIKit

class OtherView: UIView { }

class DetailViewController: UIViewController {

	@IBOutlet weak var detailDescriptionLabel: UILabel!
	@IBOutlet weak var otherView: OtherView!

	var detailItem: AnyObject? {
		didSet {
		    // Update the view.
		    self.configureView()
		}
	}

	func configureView() {
		// Update the user interface for the detail item.
		if let detail = self.detailItem {
		    if let label = self.detailDescriptionLabel {
		        label.text = detail.description
		    }
		}
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		self.configureView()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

