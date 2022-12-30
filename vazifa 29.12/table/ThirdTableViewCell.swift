//
//  ThirdTableViewCell.swift
//  vazifa 29.12
//
//  Created by mac on 30/12/22.
//

import UIKit

class ThirdTableViewCell: UITableViewCell {
    let label1 = UILabel()
    let label2 = UILabel()
    let img = UIImageView()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label1)
        label1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        label1.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        label1.text = "5:00"
        label1.font = .systemFont(ofSize: 40)
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label2)
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 10).isActive = true
        label1.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        label1.text = "Alarm, every day"
        label1.font = .systemFont(ofSize: 15)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(img)
        img.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        img.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        img.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true
        img.heightAnchor.constraint(equalToConstant: 30).isActive = true
        img.widthAnchor.constraint(equalToConstant: 30).isActive = true
        img.image = UIImage(systemName: "capsule")

    }

}
