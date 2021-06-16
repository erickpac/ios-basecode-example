//
//  Presenter.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import UIKit

protocol Presenter: AnyObject {
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}
