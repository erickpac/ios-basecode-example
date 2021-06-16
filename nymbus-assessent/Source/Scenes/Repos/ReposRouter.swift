//
//  ReposRouter.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import UIKit

class ReposRouterImpl: Router, ReposRouter {
    
    weak var viewController: Router.ViewController!
    
    init(viewController: Router.ViewController) {
        self.viewController = viewController
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}
