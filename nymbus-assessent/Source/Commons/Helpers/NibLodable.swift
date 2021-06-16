//
//  NibLodable.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import UIKit

protocol NibLoadable: AnyObject {
    static var reuseIdentifier: String { get }
    static var nib: UINib { get }
    static func loadFromNib() -> Self
}

extension NibLoadable {
    
    static var nib: UINib {
        UINib(nibName: reuseIdentifier, bundle: nil)
    }
    
    static func loadFromNib() -> Self {
        nib.instantiate(withOwner: nil, options: nil).first as! Self
    }
    
}
