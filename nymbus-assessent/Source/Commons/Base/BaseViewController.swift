//
//  BaseViewController.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeSubviews()
        setStyle()
        setText()
    }
    
    // Subclases needs override
    func initializeSubviews() {}
    
    func setStyle() {
        fatalError("Must Override")
    }
    
    func setText() {
        fatalError("Must Override")
    }
    
}
