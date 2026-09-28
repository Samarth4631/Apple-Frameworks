//
//  FrameworkDetailView.swift
//  Apple- Frameworks
//
//  Created by samarth srivastava on 23/09/26.
//

import SwiftUI

struct FrameworkDetailView: View {

    var framework: Framework

    @Environment(\.dismiss) private var dismiss
    @State private var isShowingSafariView = false

    private var frameworkURL: URL {
        URL(string: framework.urlString)
        ?? URL(string: "https://www.apple.com")!
    }

    var body: some View {
        VStack {
            XDismissButton()
                .padding()

            Spacer()


            FrameworkTitleView(
                name: framework.name,
                imageName: framework.imageName
            )


            Text(framework.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()

            Spacer()


            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: frameworkURL)
        }
    }
}

#Preview {
    FrameworkDetailView(
        framework: MockData.sampleFramework
    )
    .preferredColorScheme(.dark)
}
