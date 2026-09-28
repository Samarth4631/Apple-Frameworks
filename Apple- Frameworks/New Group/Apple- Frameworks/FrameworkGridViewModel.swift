//
//  FrameworkGridViewModel.swift
//  Apple- Frameworks
//
//  Created by samarth srivastava on 23/09/26.
//

import SwiftUI
import Combine

final class FrameworkGridViewModel: ObservableObject {

    @Published var selectedFramework: Framework?

    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}
