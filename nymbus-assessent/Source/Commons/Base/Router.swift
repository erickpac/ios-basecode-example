//
//  Router.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import UIKit

protocol Router: AnyObject {
    typealias ViewController = UIViewController
    var viewController: ViewController! { get }
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}
