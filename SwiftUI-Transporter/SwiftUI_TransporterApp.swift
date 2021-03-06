//
//  SwiftUI_TransporterApp.swift
//  SwiftUI-Transporter
//
//  Created by Ruaidhrí O'Neill on 17/08/2021.
//

import SwiftUI

@main
struct SwiftUI_TransporterApp: App {
    
    private let deliveries = DeliveryList.incomplete
    
    var body: some Scene {
        WindowGroup {
            ContentView(deliveries: deliveries)
        }
    }
}
