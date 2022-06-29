//
//  HalfSheet2.swift
//  EcoMove
//
//  Created by apprenant70 on 29/06/2022.
//

import Foundation
import SwiftUI

struct HalfSheet1<Content>: UIViewControllerRepresentable where Content : View {

    private let content: Content
    
    @inlinable init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    func makeUIViewController(context: Context) -> HalfSheetController1<Content> {
        return HalfSheetController1(rootView: content)
    }
    
    func updateUIViewController(_: HalfSheetController1<Content>, context: Context) {
    }
}
