//
//  ReusableImageBtn.swift
//  RWAJ
//
//  Created by Kareem on 26/03/2025.
//

import SwiftUI

struct ImageButton: View {
    let imageName: String
    var width: CGFloat = 30
    var height: CGFloat = 30
    var horizontalPadding: CGFloat = 5
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.horizontal, horizontalPadding)
        }
    }
}
