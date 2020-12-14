//
//  Webservice.swift
//  ExampleMVVM(test)
//
//  Created by Yasin Dalkilic on 10.12.2020.
//

import Foundation

class Webservice {
    
    func downloadCyriptoList( url : URL, completion : @escaping([CyrptoList]?) -> ()){
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                
                print(error.localizedDescription)
            }else if let data = data {
                
                    let cyrpto = try? JSONDecoder().decode([CyrptoList].self, from: data)
                    
                    if let cyrpto = cyrpto {
                        
                        print(cyrpto)

                        
                      completion(cyrpto)
                    }
            }
        }.resume()
        
        
    }
    
    
    
}
