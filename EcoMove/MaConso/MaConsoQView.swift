

import SwiftUI

struct MaConsoQView: View {
    @State var animation: Double = 0
    @State var consoJV: Double = 0.7
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .trim(from: 0.0, to: (1))
                    .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                    .frame(width: 190, height: 190)
                    .foregroundColor(Color("Rouge"))
                    .padding()
                Circle()
                    .trim(from: 0.0, to: animation )
                    .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                    .frame(width: 190, height: 190)
                    .foregroundColor(Color("LightGreen"))
                    .padding()
                    .onAppear {
                                   let baseAnimation = Animation.easeInOut(duration: 1)
                                   

                                   withAnimation(baseAnimation) {
                                       animation = consoJV
                                   }
                    }
                
            }//Z
            HStack{
                HStack{
                    ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 180.0, height: 40.0)
                    .cornerRadius(8)
                    .foregroundColor(Color("LightGreen"))
                Text("CO2 economisé")
                    .fontWeight(.bold)
                    .frame(height: 20)
                    .foregroundColor(.white)
                    }
                }
           
                HStack{
                    ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 180.0, height: 40.0)
                    .cornerRadius(8)
                    .foregroundColor(Color("Rouge"))
                Text("CO2 Produit")
                    .fontWeight(.bold)
                    .frame(height: 20)
                    .foregroundColor(.white)
                    }
                }
            }//H
            Spacer()
        }//V
       
    
}
}
struct MaConsoView_Previews: PreviewProvider {
    static var previews: some View {
        MaConsoQView()
    }
}
