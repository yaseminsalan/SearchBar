//
//  ViewContorollerTableViewManager.swift
//  SearchBar
//
//  Created by Yasemin salan on 30.08.2023.
//

import UIKit

class ViewContorollerTableViewManager:NSObject{
  
    
    typealias RowItem = CellItem
    var tableView:UITableView?
    private let customCellIdentifier = "customCellIdentifier"
    private var items:[RowItem] = []

    
    //constructors oluşturuldu
     init(tableView:UITableView) {
         super.init()
            self.tableView = tableView
         
             configureCollectionView()
        
    }
    public func set(items:[RowItem]){
        self.items = items
        tableView?.reloadData()
    }
    private func configureCollectionView(){
        //kullanacağımız cell i öncelikle tableview e tanıtmamız lazım register etmemiz gerekir.Yani bu cell i tanıyabilmesi ve kullanacağını bilmesi için
                //nib den oluşturulduğu için bu şekilde tanımlanır.
        tableView?.register(.init(nibName:"CustomTableViewCell",bundle: nil), forCellReuseIdentifier: customCellIdentifier)
        tableView?.dataSource = self
        tableView?.delegate = self
    }
}
extension ViewContorollerTableViewManager:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customCellIdentifier, for: indexPath) as! CustomTableViewCell
        cell.nameLabel.text = items[indexPath.row].title
        cell.numberLabel.text = items[indexPath.row].desc
             
                return cell
    }
    
   
}

extension ViewContorollerTableViewManager:UITableViewDelegate{
    
}

