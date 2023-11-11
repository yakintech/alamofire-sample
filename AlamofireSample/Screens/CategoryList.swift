//
//  CategoryList.swift
//  AlamofireSample
//  JSON - SWIFT STRUCT
//  Created by Çağatay Yıldız on 11.11.2023.
// https://northwind.vercel.app/api/categories

import SwiftUI

struct CategoryList: View {
    @State private var categories : [Category] = []
    var body: some View {
        VStack{
            
            ForEach(categories, id:\.id){item in
                Text(item.name)
            }
            
        }
        .onAppear(){
            
            let categoryService = CategoryServices()
            
            categoryService.getAllCategories(){result in
                categories = result
            }
            
        }
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList()
    }
}








