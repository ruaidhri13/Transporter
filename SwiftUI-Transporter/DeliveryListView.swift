//
//  DeliveryListView.swift
//  SwiftUI-Transporter
//
//  Created by Ruaidhrí O'Neill on 18/08/2021.
//

import SwiftUI

struct DeliveryListView: View {
        
        let deliveries: [Delivery]
        
        init(deliveries: [Delivery]) {
            self.deliveries = deliveries
        }
        
        var body: some View {
            NavigationView {
                List(deliveries, id: \.id) { delivery in
                    NavigationLink(destination: DeliveryDetailView(delivery: delivery),
                                   label: {
                                    DeliveryCell(delivery: delivery)
                                   })
                } .navigationTitle("Deliveries")
            }
        }
    }

struct DeliveryListView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryListView(deliveries: DeliveryList.incomplete)
    }
}
