

import SwiftUI

struct MaconsoView: View {
    @State var consoJV: Double
    @State var selectedConso: Int = 0
    var mesConso = ["Quotidienenne", "Hebdomadaire", "Mensuelle"]
    var body: some View {
        VStack{
            
            Picker(selection: $selectedConso, label: Text("Front Description")) {
                Text("Quotidienne").tag(0)
                Text("Hebdomadaire").tag(1)
                Text("Mensuel").tag(2)
                }
            .pickerStyle(.segmented)
            .frame(width: 350)
            .padding()
            if selectedConso == 0 {
                MaConsoQView()
            }
        else if selectedConso == 1 {
                MaConsoHView()
            }
        else  {
            MaConsoMView()
        }
        }//V
    }
}


struct MaconsoView_Previews: PreviewProvider {
    static var previews: some View {
        MaconsoView(consoJV: 0.4)
    }
}
