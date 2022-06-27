//
//  CustomTabBar.swift
//  EcoMove
//
//  Created by Tristan Aly on 27/06/2022.
//

import SwiftUI

struct CustomTabBar: View {
    
    var animation: Namespace.ID
    @Binding var currentTab: Tab
    
    var body: some View {
        HStack(spacing: 0) {
            
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                
                TabButton(tab: tab, animation: animation, currentTab: $currentTab) {
                    pressedTab in
                    
                    withAnimation(.spring()) {
                        currentTab = pressedTab
                    }
                }
                
            }
        } // HStack
        .padding(.horizontal)
        .padding(.top,2)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabButton: View{
    var tab: Tab
    var animation: Namespace.ID
    @Binding var currentTab: Tab
    
    var onTap: (Tab)->()
    var body: some View{
        
        Image(systemName: tab.rawValue)
            .foregroundColor(currentTab == tab ? .white : .gray)
            .frame(width: 45, height: 45)
            .background(
                ZStack{
                    
                    if currentTab == tab{
                        Circle()
                            .fill(Color("DarkGreen"))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
            )
            .frame(maxWidth: .infinity)
            .contentShape(Rectangle())
            .onTapGesture {
                onTap(tab)
            }
    }
}
