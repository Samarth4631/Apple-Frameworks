//
//  FrameworkGridView.swift
//  Apple- Frameworks
//
//  Created by samarth srivastava  on 22/09/26.
//

import SwiftUI

struct FrameworkGridView: View {

    @StateObject var viewModel = FrameworkGridViewModel()



    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(name: framework.name, imageName: framework.imageName)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                .sheet(item: $viewModel.selectedFramework) { framework in
                    FrameworkDetailView(framework: framework)
                }
            }
        }
    }

struct FrameworkGridView_preview: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

   




