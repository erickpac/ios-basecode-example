//
//  ReposViewController.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import UIKit

class ReposViewController: BaseViewController, StoryboardLoadable {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activiyIndicator: UIActivityIndicatorView!
    
    var presenter: ReposPresenter!
    static var storyboardId = "ReposViewController"
    static var storyboardName = "Main"
    private var repos: [Repo] = [Repo]() {
        didSet {
            tableView.reloadData()
            tableView.isHidden = false
            activityIndicator(show: false)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.start()
        prepareTableView()
        activityIndicator(show: true)
    }
    
    override func setText() {
        
    }
    
    override func setStyle() {
        
    }
    
    internal func prepareTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(RepoCell.nib, forCellReuseIdentifier: RepoCell.reuseIdentifier)
    }
    
    internal func activityIndicator(show: Bool = false) {
        show ? activiyIndicator.startAnimating() : activiyIndicator.stopAnimating()
        activiyIndicator.isHidden = !show
    }

}

extension ReposViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let repo = repos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: RepoCell.reuseIdentifier, for: indexPath) as? RepoCell ?? RepoCell()
        cell.configure(repo: repo)
        
        return cell
    }
    
}

extension ReposViewController: UITableViewDelegate {
    
}

extension ReposViewController: ReposView {
    
    func fetchedRepos(repos: [Repo]) {
        self.repos = repos
    }

}
