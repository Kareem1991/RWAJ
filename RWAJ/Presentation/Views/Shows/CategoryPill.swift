//
//  CategoryPill.swift
//  RWAJ
//
//  Created by Kareem on 26/03/2025.
//

import SwiftUI

struct CategoryPill: View {
    let title: String
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .foregroundColor(isSelected ? .accentPurple : .gray)
            .background(
                isSelected ? Color.pillSelectedBg : Color.clear
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(isSelected ? Color.accentPurple : .clear, lineWidth: 0.75)
            )
            .cornerRadius(20)
    }
}

#Preview {
    CategoryPill(title: "Categories")
}
