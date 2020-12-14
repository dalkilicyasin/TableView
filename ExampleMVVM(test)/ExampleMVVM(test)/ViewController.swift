//
//  ViewController.swift
//  ExampleMVVM(test)
//
//  Created by Yasin Dalkilic on 10.12.2020.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    let array1 = [Double]()

    @IBOutlet weak var tableView: UITableView!
    
   private var cyrptoListViewModel : CyrptoViewModelList!
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
        
        tableView.delegate = self
        tableView.dataSource = self
        
        getDAta()
       
    }
    
    func getDAta() {
        
        let urlData = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!
        
        
        Webservice().downloadCyriptoList(url: urlData) { (cyriptoList) in
            if let cyrpto = cyriptoList {
                
                
                self.cyrptoListViewModel = CyrptoViewModelList(cyrptoViewModelList: cyrpto)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cyrptoListViewModel == nil ? 0 : cyrptoListViewModel.numberofRow()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        
        let cyrptoViewModel = cyrptoListViewModel.cyproIndex(indexPath.row)
        
        cell.currencyLabel.text = cyrptoViewModel.name
        cell.priceLabel.text = cyrptoViewModel.price
        
        return cell
    }
    


}

