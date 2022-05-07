//
//  ContentView.swift
//  TouchDown
//
//  Created by Gauss on 01/05/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack {
            NavigationBarView()
                .padding()
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 0) {
                    FeaturedTabView()
                        .frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center)
                        .padding(.vertical)
                    CategoryGridView()
                    TitleView(title: "Helmet")
                    FooterView()
                        .padding(.horizontal)
                }//: VSTACK
            })//: SCROLL
        }//: VSTACK
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
