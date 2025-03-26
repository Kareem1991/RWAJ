//
//  SaleCard.swift
//  RWAJ
//
//  Created by Kareem on 26/03/2025.
//

import SwiftUI

struct SaleCard: View {
    let sale: SaleItem
    
    var body: some View {
        NavigationLink(destination: SaleVideoPlayerView()) {
            ZStack(alignment: .bottomLeading) {
                Image(sale.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 165, height: 260)
                    .clipped()
                    .cornerRadius(12)
                
                LinearGradient(
                    gradient: Gradient(colors: [.clear, .black.opacity(0.7)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .cornerRadius(12)
                
                VStack(alignment: .leading, spacing: 8) {
                    if let time = sale.time {
                        HStack {
                            Text(time)
                                .font(.system(size: 12, weight: .medium))
                                .foregroundColor(.black)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(Color.init(red: 214/255, green: 217/255, blue: 230/255))
                                .cornerRadius(4)
                        }
                    }
                    VStack(alignment: .leading, spacing: 8) {
                        Text(sale.title)
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.white)
                            .lineSpacing(2)
                        
                        if !sale.seller.isEmpty {
                            Text(sale.seller)
                                .font(.system(size: 14))
                                .foregroundColor(.white.opacity(0.8))
                        }
                    }
                }
                .padding(12)
            }
            .frame(width: 165, height: 260)
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 4)
            .overlay(
                ZStack {
                    HStack {
                        Image("Viewers")
                            .resizable()
                            .frame(width: 46, height: 20)
                            .padding(.leading, 10)
                        Spacer()
                        VStack(spacing: 2) {
                            Image("Save")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .padding(.top , 10)
                            Text("12")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(.white)
                        }
                        .padding(.trailing , 10)
                    }
                }, alignment: .top
            )

        }
    }
}
struct SaleItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let seller: String
    let likes: String
    let comments: String
    let time: String?
}
struct SaleCard_Previews: PreviewProvider {
    static var previews: some View {
        SaleCard(sale: SaleItem(
            imageName: "Streamer",
            title: "🔥 Exquisite Rare Stones Mega Sale",
            seller: "",
            likes: "12.1k",
            comments: "21",
            time: "Tomorrow 8:00 PM"
        ))
        .previewLayout(.sizeThatFits)
    }
}
