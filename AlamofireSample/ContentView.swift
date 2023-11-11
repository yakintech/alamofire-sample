//
//  ContentView.swift
//  AlamofireSample
//
//  Created by Çağatay Yıldız on 11.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CategoryList()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
