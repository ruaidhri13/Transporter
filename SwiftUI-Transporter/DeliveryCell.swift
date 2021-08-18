//
//  DeliveryCell.swift
//  SwiftUI-Transporter
//
//  Created by Ruaidhrí O'Neill on 17/08/2021.
//

import SwiftUI

struct DeliveryCell: View {
    private let delivery: Delivery
    
    init(delivery: Delivery) {
        self.delivery = delivery
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: Size.listSpacing) {
            Text(delivery.title)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.red)
            HStack(spacing: 2) {
                Text("Pickup:")
                    .fontWeight(.semibold)
                Text(delivery.pickupLocation)
            }
            
            HStack(spacing: 2) {
                Text("Destination: ")
                    .fontWeight(.semibold)
                Text(delivery.destinationLocation)
            }
        }
    }
}

struct DeliveryCell_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryCell(delivery: DeliveryList.incomplete[0])
    }
}
