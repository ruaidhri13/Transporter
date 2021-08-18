//
//  Delivery.swift
//  SwiftUI-Transporter
//
//  Created by Ruaidhrí O'Neill on 17/08/2021.
//

import SwiftUI

struct Delivery: Identifiable {
    
    let id = UUID()
    let title: String
    let pickupLocation: String
    let destinationLocation: String
    let routeImage: Image
}

struct DeliveryList {
    
    static let incomplete = [
        Delivery(title: "Carpet",
                 pickupLocation: "Omagh",
                 destinationLocation: "Belfast",
                 routeImage: ""),
        
        Delivery(title: "Tiles",
                 pickupLocation: "Dungannon",
                 destinationLocation: "Limavady",
                 routeImage: ""),
        
        Delivery(title: "Beer",
                 pickupLocation: "Belfast",
                 destinationLocation: "Newastle",
                 routeImage: ""),
        
        Delivery(title: "TVs",
                 pickupLocation: "Lurgan",
                 destinationLocation: "Portadown",
                 routeImage: ""),
        
        Delivery(title: "Snakes",
                 pickupLocation: "Derry",
                 destinationLocation: "Newry",
                 routeImage: "")
    ]
}
