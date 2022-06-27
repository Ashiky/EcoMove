//
//  TabBar.swift
//  EcoMove
//
//  Created by Tristan Aly on 27/06/2022.
//

import SwiftUI


struct TabBar: View {
    
    @State var currentTab: Tab = .Map
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    @Namespace var animation
    
    var body: some View {
        VStack{
            
            TabView(selection: $currentTab) {
                
                ProfileView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.04)
                    .ignoresSafeArea())
                    .tag(Tab.Profil)
                
               MapView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.04)
                    .ignoresSafeArea())
                    .tag(Tab.Map)
                
                RewardView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.04)
                    .ignoresSafeArea())
                    .tag(Tab.Gift)
               
            }
            
            CustomTabBar(animation: animation,currentTab: $currentTab)
                .background(Color.white)
                .edgesIgnoringSafeArea(.bottom)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

enum Tab: String, CaseIterable{
    case Profil = "person.fill"
    case Map = "map.fill"
    case Gift = "gift.fill"
}
