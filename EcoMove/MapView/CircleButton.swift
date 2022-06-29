//
//  CircleButton.swift
//  EcoMove
//
//  Created by Tristan Aly on 29/06/2022.
//

import SwiftUI

struct CircleButton: View {
    @State var returnArrow = false
    var animation: Animation {
        Animation.easeOut(duration: 0.3)
    }
    
    var body: some View {
        VStack{
            Button{
                returnArrow.toggle()
                    
            } label: {
                Image(systemName: "arrow.up.arrow.down")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(12)
                    .rotationEffect(Angle.degrees(returnArrow ? 180 : 0))
                    .animation(animation)
            }.background(Color("LightGreen"))
                .clipShape(Circle())
        }
    }
}


struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton()
    }
}
