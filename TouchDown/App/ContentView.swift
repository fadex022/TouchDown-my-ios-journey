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
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width / 1.6, alignment: .center)
                        .padding(.vertical)
                    CategoryGridView()
                    TitleView(title: "Helmet")
                    LazyVGrid(columns: gridLayout, spacing: rowSpacing, pinnedViews: [], content: {
                        ForEach(products){product in
                            ProductItemView(product: product)
                        }//: LOOP
                    })//: GRID
                    .padding(15)
                    TitleView(title: "Brands")
                    BrandGridView()
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
