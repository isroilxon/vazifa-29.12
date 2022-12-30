//
//  FirstTableViewCell.swift
//  vazifa 29.12
//
//  Created by mac on 30/12/22.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    let label = UILabel()
    let label2 = UILabel()
    let divan = UIImageView()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        label.font = .systemFont(ofSize: 30)
        label.text = "Alarm"
        
        divan.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(divan)
        divan.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 30).isActive = true
        divan.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        divan.image = UIImage(systemName: "sofa")
        divan.widthAnchor.constraint(equalToConstant: 30).isActive = true
        divan.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label2)
        label2.topAnchor.constraint(equalTo: label.bottomAnchor,constant: 30).isActive = true
        label2.leftAnchor.constraint(equalTo: divan.rightAnchor,constant: 10).isActive = true
        label2.font = .systemFont(ofSize: 20)
        label2.text = "Sleep|Wake up"
        label2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true

        


        // Configure the view for the selected state
    }

}
