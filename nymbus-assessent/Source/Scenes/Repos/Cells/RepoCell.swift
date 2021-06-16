//
//  RepoCell.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import UIKit

class RepoCell: UITableViewCell, NibLoadable {
    
    @IBOutlet weak var ownerNameLabel: UILabel!
    @IBOutlet weak var ownerProfilePictureImageView: UIImageView!
    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var repoFullNameLabel: UILabel!
    @IBOutlet weak var repoDescriptionLabel: UILabel!
    @IBOutlet weak var repoStasLabel: UILabel!
    @IBOutlet weak var isPrivateLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    
    static var reuseIdentifier: String = "RepoCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        prepareUI()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    internal func prepareUI() {
        containerView.layer.cornerRadius = 10
    }
    
    func configure(repo: Repo) {
        repoNameLabel.text = repo.name
        repoFullNameLabel.text = repo.fullName
        repoDescriptionLabel.text = repo.descriptionText
        repoStasLabel.text = "\(repo.stars)"
        isPrivateLabel.text = repo.isPrivate ?? false ? "ProjectPrivate".localizable : "ProjectPublic".localizable
        ownerNameLabel.text = repo.owner?.name
        ownerProfilePictureImageView.loadImage(path: repo.owner?.avatarURL)
    }
    
}
