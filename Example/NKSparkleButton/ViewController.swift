//
//  ViewController.swift
//  NKSparkleButton
//
//  Created by Nam Kennic on 03/12/2018.
//  Copyright (c) 2018 Nam Kennic. All rights reserved.
//

import UIKit
import NKSparkleButton

class ViewController: UIViewController {
	let heartButton = NKSparkleButton()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		heartButton.setImage(#imageLiteral(resourceName: "heart"), for: .normal)
		heartButton.showsTouchWhenHighlighted = true
		self.view.addSubview(heartButton)
    }
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		
		let viewSize = self.view.bounds.size
		let buttonSize = CGSize(width: 64, height: 64)
		heartButton.frame = CGRect(x: (viewSize.width - buttonSize.width)/2, y: (viewSize.height - buttonSize.height)/2, width: buttonSize.width, height: buttonSize.height)
	}

}

