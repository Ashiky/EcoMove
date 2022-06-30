

import SwiftUI

struct MaConsoQView: View {
    @State var animation: Double = 0
    @State var consoJV: Double = 0.6
    var pourcentageV: String {
        let chiffre = NumberFormatter()
        chiffre.numberStyle = .percent
        return chiffre.string(from: NSNumber(value: animation)) ?? "0"
    }
    var pourcentageR: String {
        let chiffre = NumberFormatter()
        chiffre.numberStyle = .percent
        return chiffre.string(from: NSNumber(value: 1 - animation)) ?? "0"
    }
    var body: some View {
        VStack {
            ZStack {
                VStack{
                    HStack{
                        Spacer()
                        Text(pourcentageR)
                            .padding()
                        .foregroundColor(Color("Rouge"))                    }
                    Spacer()
                    HStack{
                        Text(pourcentageV)
                            .padding()
                            .foregroundColor(Color("LightGreen"))
                        Spacer()
                    }
                }
                .frame(height: 190)
                if animation <= 0.5{
                    Image("nuageCO2")
                        .resizable()
                        .frame(width: 100, height: 100)
                } else if animation >= 0.6 {
                    Image(systemName: "camera.macro")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color("LightGreen"))
                }
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
                        let baseAnimation = Animation.easeInOut(duration: 3)
                        
                        
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
                        Text("CO2 économisé")
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
                        Text("CO2 produit")
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
