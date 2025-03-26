//
//  ContentView.swift
//  RWAJ
//
//  Created by Kareem on 26/03/2025.
//

import SwiftUI

struct Shows: View {
    @State private var selectedCategory: String = "For you"
    
    let categories = ["For you", "Vintage", "Coins", "Sport", "Jewell"]
    let streamerLiveArr = [
        SaleItem(imageName: "Streamer", title: "🔥 Exquisite Rare Stones Mega Sale", seller: "", likes: "", comments: "", time: "Tomorrow 8:00 PM"),
        SaleItem(imageName: "Streamer2", title: "⏱️⏱️ Classic 1970s Rare Watches Mega Sale", seller: "", likes: "", comments: "", time: "Tomorrow 8:00 PM"),
        SaleItem(imageName: "Streamer3", title: "🔥 Gourmet Delights and Kitchen Essentials", seller: "", likes: "", comments: "", time: "Tomorrow 8:00 PM"),
        SaleItem(imageName: "Streamer4", title: "🔥 Exquisite Rare Stones Mega Sale", seller: "", likes: "", comments: "", time: "Tomorrow 8:00 PM"),
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    HStack {
                        SearchBar()
                        HStack {
                            ImageButton(imageName: "Chat", action: {})
                            ImageButton(imageName: "Notification", action: {})
                        }
                    }
                    .padding(.horizontal)

                    HStack {
                        ImageButton(imageName: "Sort", horizontalPadding: 15, action: {})

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 5) {
                                ForEach(categories, id: \.self) { category in
                                    CategoryPill(
                                        title: category,
                                        isSelected: category == selectedCategory
                                    )
                                    .onTapGesture {
                                        selectedCategory = category
                                    }
                                }
                            }
                        }
                    }
                    .padding(.horizontal)

                    LazyVGrid(columns: [GridItem(.flexible(), spacing: 12), GridItem(.flexible())], spacing: 15) {
                        ForEach(streamerLiveArr) { sale in
                            SaleCard(sale: sale)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
            }
        }
    }
}

struct MarketplaceView_Previews: PreviewProvider {
    static var previews: some View {
        Shows()
    }
}

struct BottomBarButton: View {
    let icon: String
    let label: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
            Text(label)
                .font(.caption)
        }
        .frame(maxWidth: .infinity)
    }
}

struct SearchBar: View {
    @State private var searchText = ""
    
    var body: some View {
        HStack {
            TextField("Search for anything", text: $searchText)
                .padding(.vertical, 7)
                .padding(.horizontal, 10)
                .foregroundColor(.primary)

            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
                .padding(.horizontal, 10)
        }
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 0.5)
        )
        .padding(.horizontal)
    }
}

