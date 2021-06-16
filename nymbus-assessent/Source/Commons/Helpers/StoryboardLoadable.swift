//
//  StoryboardLoadable.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import UIKit

protocol StoryboardLoadable: AnyObject {
    static var storyboardId: String { get }
    static var storyboardName: String { get }
}

extension StoryboardLoadable {
    
    static func loadFromStoryboard() -> Self {
        return UIStoryboard(name: storyboardName, bundle: Bundle.main).instantiateViewController(withIdentifier: storyboardId) as! Self
    }
    
}
