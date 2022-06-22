

import SwiftUI

struct MaConsoQView: View {
    @State var animation: Double = 0
    @State var consoJV: Double = 0.5
    var body: some View {
        VStack {
            
            ZStack {
                Circle()
                    .trim(from: 0.0, to: (1))
                    .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                    .frame(width: 150, height: 150)
                    .foregroundColor(Color("Rouge"))
                Circle()
                    .trim(from: 0.0, to: animation )
                    .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                    .frame(width: 150, height: 150)
                    .foregroundColor(Color("LightGreen"))
                    .onAppear {
                                   let baseAnimation = Animation.easeInOut(duration: 1)
                                   

                                   withAnimation(baseAnimation) {
                                       animation = consoJV
                                   }
                                
                    }
            }//Z
            HStack{
                Text("CO2 Economisé")
                    .frame(width: 125, height: 20, alignment: .leading)
                RoundedRectangle(cornerRadius: 16)
                    .frame(width: 20, height: 10)
                    .foregroundColor(Color("LightGreen"))
                Spacer()
            }//H
            HStack{
                Text("CO2 Produit")
                    .frame(width: 126, height: 20, alignment: .leading)
                RoundedRectangle(cornerRadius: 16)
                    .frame(width: 20, height: 10)
                    .foregroundColor(Color("Rouge"))
                Spacer()
                
            }//H
        }//V
        .frame(height: 300)
    
}
}
struct MaConsoView_Previews: PreviewProvider {
    static var previews: some View {
        MaConsoQView()
    }
}
