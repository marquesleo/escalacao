//
//  ViewController.swift
//  todolist
//
//  Created by Leonardo Marques on 08/05/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId")!

            cell.textLabel?.text = dogs[indexPath.row]
            cell.imageView?.image = UIImage(named: "dog")

            return cell
    }
    
    let tbl:UITableView = {
        let v = UITableView(frame: .zero, style: .plain)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    
    
    
    let dogs = ["Pastor Alemão","Pastor Belga","Pastor de Brie",
                    "Pastor dos Pirenéus de Cara Rosa","Pequinês",
                    "Perdigueiro","Pitbull","Podengo","Pointer","Pug"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tbl)
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(),  metrics: nil, views: ["v0" : tbl]))
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : tbl]))
        
        // 3
        tbl.delegate = self
        tbl.dataSource = self

        // 4
        tbl.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
        // Do any additional setup after loading the view.
    }


}

