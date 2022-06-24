//
//  TransportFile.swift
//  EcoMove
//
//  Created by aprennant 18 on 24/06/2022.
//

import SwiftUI

struct FavorisView: View {
    var favorisTransport : String
    var transportImage : String

    var body: some View {
        HStack{
            Image(systemName: transportImage)
            Text(favorisTransport)
        }
    }
}
