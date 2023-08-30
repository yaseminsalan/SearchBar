//
//  ViewController.swift
//  SearchBar
//
//  Created by Yasemin salan on 30.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var tableViewHelper:ViewContorollerTableViewManager!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchBar: UISearchBar!
     var contacts:[Contact] = [
           .init(name: "Yasemin", phoneNumber:"12313432423"),
           .init(name: "Ege", phoneNumber: "2343242342"),
           .init(name: "Nursima", phoneNumber: "341224"),
           .init(name: "Oktay", phoneNumber: "2312313"),
           .init(name: "Aslı", phoneNumber: "3413r413")]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewHelper = .init(tableView: tableView)
        tableViewHelper.set(items: contacts)
        // Do any additional setup after loading the view.
    }


}

