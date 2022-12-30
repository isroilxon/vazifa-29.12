//
//  SecondTableViewCell.swift
//  vazifa 29.12
//
//  Created by mac on 30/12/22.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    let label = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 40).isActive = true
        label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 10).isActive = true
        label.font = .systemFont(ofSize: 20)
        label.text = "other"

    }

}
