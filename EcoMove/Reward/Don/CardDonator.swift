//
//  CardDonator.swift
//  EcoMove
//
//  Created by apprenant52 on 22/06/2022.
//

import SwiftUI

struct MakeDonation:Identifiable {
    var id=UUID()
    var image : String
    var name : String
    var minutes : String
    var ptsReward : Int
}

struct CardDonator: View {
    
    
    var makeDonations = [
        MakeDonation(image: "Tony", name: "Tony", minutes: "il y a 3 minutes", ptsReward: 400),
        MakeDonation(image: "claire", name: "Claire", minutes: "il y a 5 minutes", ptsReward: 800),
        MakeDonation(image: "Paul", name: "Paul", minutes: "il y a 10 minutes", ptsReward: 500),
        MakeDonation(image: "Sara", name: "Sara", minutes: "il y a 15 minutes", ptsReward: 600),
    ]
    
    var body: some View {
        
        VStack {
            
         ForEach(makeDonations, id: \.name) { makeDonation in
        
        VStack{
            HStack(spacing: 24){
                
                Image(makeDonation.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60, alignment: .center)
                    .clipShape(Circle())
                VStack(alignment: .leading,spacing: 5){
                    Text(makeDonation.name)
                        .font(.title3)
                    Text(makeDonation.minutes)
                        .font(.subheadline)
                }
                Text("\(makeDonation.ptsReward)  \(Image(systemName: "millsign.square.fill"))")
                    .font(.system(size: 20))
                    .foregroundColor(Color("DarkGreen"))
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8)
            .fill(.white)
            .shadow(color: Color("DarkGreen"), radius: 5, x: 2, y: 3))
        }
    }
}
}

struct CardDonator_Previews: PreviewProvider {
    static var previews: some View {
        CardDonator()
    }
}
