//
//  ReposProtocol.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import UIKit

protocol ReposPresenter: Presenter {
    var view: ReposView! { get set }
    var router: ReposRouter! { get set }
    func start()
}

protocol ReposView: UIViewController {
    func fetchedRepos(repos: [Repo])
}

protocol ReposRouter: Router {
    
}
