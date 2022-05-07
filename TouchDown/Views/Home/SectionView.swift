//
//  SectionView.swift
//  TouchDown
//
//  Created by Gauss on 07/05/2022.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockWise: Bool
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Categories")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            Spacer()
        }
        .background(Color.gray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
    }
}
