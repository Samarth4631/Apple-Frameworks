//
//  SafariView.swift
//  Apple- Frameworks
//
//  Created by samarth srivastava  on 23/09/26.
//

import SafariServices
import SwiftUI

struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: Context) ->
    SFSafariViewController {
    SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
}
