//
//  TestTabBar.swift
//  EcoMove
//
//  Created by apprenant70 on 28/06/2022.
//

import SwiftUI

struct TestTabBar: View {
    init() {
        UITabBar.appearance().backgroundColor = .gray
    }
    var body: some View {
        TabView {
          
            ProfileView()
                .tabItem({
                    Image(systemName: "person.fill")
                })
              
                
            
           MapView()
           
                .tabItem({
                    Image(systemName: "map.fill")
                })
            
            RewardView()
          
                .tabItem({
                    Image(systemName: "gift.fill")
                })
           
        }
    }
}

struct TestTabBar_Previews: PreviewProvider {
    static var previews: some View {
        TestTabBar()
    }
}
