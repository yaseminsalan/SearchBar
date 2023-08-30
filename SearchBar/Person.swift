//
//  Person.swift
//  SearchBar
//
//  Created by Yasemin salan on 30.08.2023.
//

import Foundation

struct Person: CellItem {
    var name:String
    var age:Int
    var title:String{
        get{
            name
        }
    }
    var desc:String{
        get{
            String(age)
        }
    }
}
struct Contact: CellItem{
    var name: String
    let phoneNumber:String
    
    var title:String{
        get{
            name
        }
    }
    var desc:String{
        get{
         phoneNumber
        }
    }
}

//prtocol oluşturuldu.cell i ortal bir yerde kullanmak için.tek bir cell i farklı data tiplerinde kullabilmek için protocol kullanılmışdır
protocol CellItem{
    var title:String { get  }
    var desc:String { get  }
}
