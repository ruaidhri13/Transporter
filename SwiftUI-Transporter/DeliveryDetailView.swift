//
//  VideoDetailView.swift
//  SwiftUI-Transporter
//
//  Created by Ruaidhrí O'Neill on 16/08/2021.
//

import SwiftUI

struct DeliveryDetailView: View {
    
    private let delivery: Delivery
    
    init(delivery: Delivery) {
        self.delivery = delivery
    }
    
    var body: some View {
        VStack(spacing: 5) {
            Spacer()
            
            Text(delivery.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Text(delivery.pickupLocation)
            
            Text(delivery.destinationLocation)
            
            Spacer()
            
            //Link(destination: video.url, label: {
            //    LinkedButton(title: "Watch Now")
        }
    }
}

struct LinkedButton: View {
    
    var title: String
    
    var body: some View {
        Text("Watch Now")
            .bold()
            .font(.title2)
            .frame(width: 280, height: 50)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryDetailView(delivery: DeliveryList.incomplete.first!)
    }
}
