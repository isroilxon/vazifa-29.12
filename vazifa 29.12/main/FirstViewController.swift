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
        title = "Alarm"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "edit", style: .plain, target: self, action: #selector(add))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(add))
        
        view.backgroundColor = .white
        

        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        tableView.register(FirstTableViewCell.self, forCellReuseIdentifier: "cell1")
        tableView.register(SecondTableViewCell.self, forCellReuseIdentifier: "cell2")
        tableView.register(ThirdTableViewCell.self, forCellReuseIdentifier: "cell3")
        tableView.register(Header.self, forHeaderFooterViewReuseIdentifier: "header")
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.delegate = self
        tableView.dataSource = self
  



    }
//    @objc func edit () {
//        print("skfn")
//    }

    @objc func add() {
        print("sjvb")
    }


}




extension FirstViewController:UITableViewDataSource, UITableViewDelegate {
    

    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header")
        header?.contentView.backgroundColor = .white
        
        return header
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
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
