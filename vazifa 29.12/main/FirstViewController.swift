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
   
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "time"
        view.backgroundColor = .black
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        tableView.register(FirstTableViewCell.self, forCellReuseIdentifier: "cell1")
        tableView.register(SecondTableViewCell.self, forCellReuseIdentifier: "cell2")
        tableView.register(ThirdTableViewCell.self, forCellReuseIdentifier: "cell3")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.backgroundColor = .black



    }


}

extension FirstViewController:UITableViewDataSource, UITableViewDelegate {
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
