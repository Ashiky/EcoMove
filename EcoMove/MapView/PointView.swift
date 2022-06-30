//
//  PointView.swift
//  EcoMove
//
//  Created by apprenant70 on 29/06/2022.
//

import SwiftUI

struct PointView: View {
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("DarkGreen"))
                .frame(width: 90, height: 40)
            Text("1356 \(Image(systemName: "millsign.circle.fill"))")
                .foregroundColor(.white)
        }
    }
}

struct PointView_Previews: PreviewProvider {
    static var previews: some View {
        PointView()
    }
}
