//
//  ReposPresenter.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import UIKit

class ReposPresenterImpl: Presenter, ReposPresenter {
    
    var router: ReposRouter!
    weak var view: ReposView!
    private let apiManger: APIManager
    
    init(apiManager: APIManager = Injections.shared.apiManager) {
        self.apiManger = apiManager
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router.prepare(for: segue, sender: sender)
    }
    
}

// MARK: - ReposPresenter
extension ReposPresenterImpl {
    
    func start() {
        fetchRepos()
    }
    
    func fetchRepos() {
        apiManger.performRequest(to: APIConstants.repos.value) { [weak self] (response: [Repo]?) in
            let repos = response ?? []
            self?.view.fetchedRepos(repos: repos)
        } failure: { error in
            print("fetch repo error - \(error?.localizedDescription ?? "")")
        }
    }
    
}
