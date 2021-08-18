//
//  ContentView.swift
//  SwiftUI-Transporter
//
//  Created by Ruaidhrí O'Neill on 17/08/2021.
//

import SwiftUI

struct Size {
    static let listSpacing: CGFloat = 5
}

struct ContentView: View {
    
    private let deliveries: [Delivery]
    
    init(deliveries: [Delivery]) {
        self.deliveries = deliveries
    }
    
    var body: some View {
        DeliveryListView(deliveries: DeliveryList.incomplete)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(deliveries: DeliveryList.incomplete)
    }
}
