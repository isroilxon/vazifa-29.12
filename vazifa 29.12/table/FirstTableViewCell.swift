//
//  FirstTableViewCell.swift
//  vazifa 29.12
//
//  Created by mac on 30/12/22.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    let label1 = UILabel()
    let label2 = UILabel()
    let button = UIButton()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label1)
        label1.text = "No Alaram"
        label1.font = .systemFont(ofSize: 35)
        label1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25).isActive = true
        label1.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label2)
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 20).isActive = true
        label2.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        label2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        label2.text = "Tomorrow Morning"
        label2.font = .systemFont(ofSize: 20)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(button)
        button.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        button.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.backgroundColor = .orange
        button.setTitle("CHANGE", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        
    }

}
