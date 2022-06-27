

import SwiftUI

struct StartViews: View {
    var body: some View {
        VStack{
            Text("ECOMOVE")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("DarkGreen"))
                .padding()
            Spacer()
            
            Image("ecomove")
                .resizable()
                .frame(width: 380, height: 380, alignment: .center)
            
            Spacer()
            
            NavigationLink {
//                Vue de Suzanne Transport
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.blue)
                    .frame(width: 180, height: 60)
                    .overlay(Text("Get started")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding())
                    .padding()
                    
            }
        } //: VStack
    }
}

struct StartViews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartViews()
        }
    }
}
