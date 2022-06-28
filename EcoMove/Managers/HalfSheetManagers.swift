//
//  HalfSheetManagers.swift
//  EcoMove
//
//  Created by Tristan Aly on 24/06/2022.
//

import Foundation
import CoreData
import SwiftUI

// HalfSheet..


class HalfSheetController<Content>: UIHostingController<Content> where Content : View {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let presentation = sheetPresentationController {
            presentation.detents = [.medium()]
            presentation.prefersGrabberVisible = true
            presentation.largestUndimmedDetentIdentifier = .medium
        }
    }
}
