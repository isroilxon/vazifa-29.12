//
//  FirstViewController.swift
//  vazifa 29.12
//
//  Created by mac on 30/12/22.
//

import UIKit

class FirstViewController: UIViewController {
    let tableView  = UITableView()
    let label = UILabel()
    let edit = UILabel()
    let img = UIImageView()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        edit.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(edit)
        edit.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        edit.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 7).isActive = true
        edit.font = .systemFont(ofSize: 10)
        edit.text = "edit"
        
        img.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(img)
        img.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        img.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -7).isActive = true
        img.heightAnchor.constraint(equalToConstant: 10).isActive = true
        img.widthAnchor.constraint(equalToConstant: 20).isActive = true
        img.image = UIImage(systemName: "plus")
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        tableView.register(FirstTableViewCell.self, forCellReuseIdentifier: "cell1")
        tableView.register(SecondTableViewCell.self, forCellReuseIdentifier: "cell2")
        tableView.register(ThirdTableViewCell.self, forCellReuseIdentifier: "cell3")
        tableView.register(Header.self, forHeaderFooterViewReuseIdentifier: "header")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.topAnchor.constraint(equalTo: edit.bottomAnchor, constant: 20).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true



    }


}

extension FirstViewController:UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header")
        header?.contentView.backgroundColor = .white
        
        return header
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! FirstTableViewCell
            return cell
        }
        else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! SecondTableViewCell
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! ThirdTableViewCell
            return cell
        }
            
       
    }
}
