//
//  CyrptoViewModel.swift
//  ExampleMVVM(test)
//
//  Created by Yasin Dalkilic on 10.12.2020.
//

import Foundation


struct CyrptoViewModelList {
    
    let cyrptoViewModelList : [CyrptoList]
    
    func numberofRow() -> Int {
        self.cyrptoViewModelList.count
    }
    
    func cyproIndex(_ Index : Int) -> CyrptoViewModel {
        
        let cyrptos = cyrptoViewModelList[Index]
        
        return CyrptoViewModel(cyrptoViewModel: cyrptos)
    }
    
    
}

struct CyrptoViewModel {
    
    let cyrptoViewModel : CyrptoList
    
    var  name : String {
        
        return self.cyrptoViewModel.currency
    }
    
    var price : String {
        
        return self.cyrptoViewModel.price
    }
}


