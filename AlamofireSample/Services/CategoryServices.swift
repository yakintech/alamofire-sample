//
//  CategoryServices.swift
//  AlamofireSample
//
//  Created by Çağatay Yıldız on 11.11.2023.
//

import Foundation
import Alamofire



class CategoryServices{
    
    func getAllCategories(completionHandler: @escaping ([Category]) -> ()) -> Void{
        
        var categories : [Category] = []
        
        let request = AF.request("https://northwind.vercel.app/api/categories")
        

        request.responseDecodable(of: [Category].self){response in
            categories = response.value ?? []
            completionHandler(categories)
        }
        
    }
}
