//
//  ReposConfigurator.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

struct ReposConfigurator {
    
    static func getController() -> ReposViewController {
        let viewController = ReposViewController.loadFromStoryboard()
        viewController.presenter = ReposPresenterImpl()
        viewController.presenter.view = viewController
        let router = ReposRouterImpl(viewController: viewController)
        viewController.presenter.router = router
        return viewController
    }
    
}
